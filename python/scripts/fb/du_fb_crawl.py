#!/usr/bin/env python
"""
Program to get all likes of a page using its id.

"""
import pymysql, urllib2, re, json

conn 	= pymysql.connect(host='localhost', port=3306, user='root', passwd='', db='fb')
cur  	= conn.cursor()
table 	= "du_fans"
page_id = "198247806866141"
page 	= "https://www.facebook.com/plugins/fan.php?connections=100&id="+page_id
avoid 	= ["UniversityofDelhi"] #list of names to be avoided
while(True):
	html 		= urllib2.urlopen(urllib2.Request(page)).read()
	usernames 	= re.findall('"http://www.facebook.com/([a-zA-Z0-9._-]*)"', html)
	for username in usernames:
		if username not in avoid:
			#check if name already exists
			cur.execute("SELECT `id` FROM `%s` WHERE username= '%s' "%(table, username))
			r = cur.fetchone()
			if r == None:
				#user does not exists
				url  = "http://graph.facebook.com/"+username
				info = json.loads(urllib2.urlopen(urllib2.Request(url)).read())
				try:
					print username
					sql  = "INSERT INTO `%s` (`username`, `real_name`, `sex`, `fbid`, `photo_url`) VALUES ('%s', '%s', '%s', '%s', '%s')"%(table, username, info['first_name']+" "+info['last_name'], info['gender'], info['id'],"http://graph.facebook.com/"+info['id']+"/picture?type=large")
					cur.execute(sql)
					conn.commit()
				except UnicodeEncodeError:
					pass
			else:
				print "# REPEAT #"
cur.close()
conn.close()