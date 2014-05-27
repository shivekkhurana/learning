#!/usr/bin/python

'''
Convert whats app chat data.txt into managable data types.
'''

import re

class Whatsapp(object):

	message_pattern = re.compile("(.*)\s([0-9:]*\s[a|p]m):\s(.*):\s(.*)")

	def __init__(self, file_object):
		lines = file_object.read().decode("utf-8") #\x escaped bytes to \u escaped unicode
		lines = lines.split("\r\n")

		#feff removal hack
		lines[0] = lines[0].split(u"\ufeff")[1]

		formatted_lines = []
		for line in lines:
			match = self.message_pattern.match(line)
			if match :
				formatted_lines.append( match.groups() )

		self.formatted_lines = formatted_lines

	def text(self, sender=False):
		all_text = ""

		if sender and (sender not in self.participants()) : 
			#TODO : implement wildcard matching
			raise Exception("Sender :%s is not a part of conversation" %(sender))			

		for line in self.formatted_lines:
			if sender :
				if line[2] == sender :
					all_text = all_text + "\n" + line[-1]
			else:
				all_text = all_text + "\n" + line[-1]

		return all_text

	def participants(self):
		participants = []
		for line in self.formatted_lines: 
			if line[2] not in participants: 
				participants.append( line[2] )

		return participants
