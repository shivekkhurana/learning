import pymysql, urllib2, re, json

conn 	= pymysql.connect(host='localhost', port=3306, user='root', passwd='', db='fb')
cur  	= conn.cursor()
table 	= "du_fans"

cur.execute("SELECT photo_url FROM du_fans")
p = cur.fetchall()
f=open("show.html", "a+b")
for i in p:
	f.write("<img src='%s'><br/>"%i)