#!/usr/bin/python

'''
merge multiple json files into sqlite3 db
'''

import sqlite3, json, random

json_files = ["dreams.json", "life.json", "friendship.json", "funny.json", "inspiration.json", "love.json", "motivation.json", "wisdom.json", "change.json", "art.json", "romance.json", "relationship.json", "happiness.json"]

hex_colors = {
	"dreams":"#7dd3b0",
	"life":"#8bc6cc",
	"friendship":"#36a1a0",
	"funny":"#B0E629",
	"inspiration":"#F06D61",
	"love":"#ff2c19",
	"motivation":"#FB4A42",
	"wisdom":"#3f424d",
	"change":"#FDBA86",
	"art":"#00aba9",
	"romance":"#FA4A47",
	"relationship":"#CF4647",
	"happiness":"#fb5756"
}

read = favorite = 0

connection = sqlite3.connect("Quotes.sqlite")
cursor = connection.cursor()

index = 0

for json_file in json_files:
	current_set = json.load(open(json_file))
	category = json_file.split(".")[0]
	current_set = current_set["results"]["collection1"]
	for quote in current_set:
		author = quote["author"]["text"]
		text = quote["text"]["text"]
		index +=1
		hex_color = hex_colors[category]
		query = """insert into Quote(category, text, author, hex_color, read, favorite) values("%s", "%s", "%s", "%s", %s, %s)"""%(category, text, author, hex_color, read, favorite) 
		
		try:
			if len(text) <=165:
				cursor.execute(query)
				print index, "\n\n"
		except:
			print "repeated entry\n\n"
	
connection.commit()
connection.close()