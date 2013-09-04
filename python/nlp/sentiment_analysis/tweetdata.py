import urllib2, sqlite3

#connect to db
connection = sqlite3.connect("tweetdata.db", timeout = 2)
db = connection.cursor()

retry_count = 1

#on observation that tweets are generally ending with 3.
def get_nearest_3(n):
  n = str(n)
  if(n[-1] == '3'):
	n = int(n) + 10
  while(type(n)!=int and n[-1] != '3'):
    n = int(n)
    add = 2
    if(n%2 == 0):
      add = 1
    n += add
    n = str(n)
  return int(n)


#get id of last inserted tweet
def get_last_id():
  db.execute("SELECT tweet_id FROM tweets ORDER BY rowid DESC LIMIT 1")
  id = db.fetchone()
  return id[0]

#get all rows
def get_all():
  db.execute("SELECT * FROM tweets")
  data = db.fetchall()
  for record in data:
    print record

def get_list():
  db.execute("SELECT * FROM tweets")
  data = db.fetchall()
  r = []
  for record in data:
    r.append((record[0],record[3]))
  return r


#get raw json tweet data from last id
def get_raw_json(id):
  retry_id = get_nearest_3(id)
  if(retry_id == id):
    retry_id = id+1
  url = "https://api.twitter.com/1/statuses/show/"+str(id)+".json"
  req = urllib2.Request(url)
  print "\n\n",url
  #print req
  #if(1):
  try:
    json = urllib2.urlopen(req)
    print "fetching id = %s"%(id)
    json = json.read()
    (true, false, null) = (True, False, None)
    json = eval(json)
    if(json.has_key("errors")):
      #return {"retry_id":id + retry_count}
      return {"retry_id":retry_id}
    else:
      return json
  #else:
  except urllib2.HTTPError, e:
    if(e.code == '400' or e.code == 400):
      return None
    else:
    	#if one id is not found, skip 10
      print e
      #return {"retry_id":id + retry_count}
      #return {"retry_id":get_nearest_3(id)}
      return {"retry_id":retry_id}
      
def insert_into_db(data):
  print "db : ", data['text']
  url = data['user']['url']
  if(url):
    url = url.replace('''\\\\''','')

  data = (data['user']['name'], data['user']['location'], url, data['text'].replace('"',"'"), data['id'])
  db.execute("""INSERT INTO tweets VALUES("%s", "%s", "%s", "%s", "%s")"""%data)
  connection.commit()

def main(increment = 1):
  global c
  #get data of next tweet (if exists)
  if(increment == 1):
    increment = get_nearest_3(get_last_id())
  data = get_raw_json(increment)
 
  if(data == None):
    global c
    #400 error encountered
    print "rate limit reached !"
    get_all()
    connection.close()
  if(data.has_key("retry_id")):
    r_id = int(data["retry_id"])
    print "err : retrying with ", r_id
    main(r_id)
  else:
    insert_into_db(data)
    print ">>>", data["user"]["name"], "\n\n", "*"*100
    #recurse indefinately
    main()

if __name__ == '__main__':
  main()
