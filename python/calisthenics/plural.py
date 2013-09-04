#program to print plural of a word

import re
y = re.compile("[a-zA-Z]*y") #get words ending with y
s = re.compile("[a-zA-Z]*s") #get words ending with s
anomalies = {'person':'people', 'child':'children', 'man':'men', 'woman':'women'}

def get_type(word):
	#1 = add s get plural
	#2 = sub y with ies
	#3 = anomalies [child => children, person => people]
	#4 = sub s with es
	if(anomalies.has_key(word)):
		return 3
	else:
		a = y.findall(word)
		if(len(a) > 0):
			return 2
		else:
			b = s.findall(word)
			if(len(b) > 0):
				return 4
			return 1

def get_plural(word):		
	type = get_type(word)
	if(type == 1):
		return word + 's'
	if(type == 2):
		word = y.findall(word) #match pattern
		word = word[0] #get first element in list
		word = word[0:(len(word) - 1)] #strip y
		return word + 'ies'
	if(type == 3):
		return anomalies[word]
	if(type == 4):
		word = s.findall(word) #match pattern
		word = word[0] #get first element in list
		return word + 'es'


flag = True
while(flag):
	print "Enter word to get its plural."
	print get_plural(raw_input("Enter word : "))
	if(raw_input("Continue y/n ?  enter choice : ") == 'n'):
		flag = False
