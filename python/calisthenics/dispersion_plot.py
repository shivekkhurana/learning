#program to plot the frequency of ocuurence of words

import re
from nltk import text 
w_type = re.compile("[a-z]*") #remove trailin' slashes and . etc
f = open("D:/Code/python/nltk/nltk_data/corpora/webtext/grail.txt") #file object
c = 0 #counter
words = {} #word list and frequency
time = 500

#iterate over file and count all words
print "reading file "

f = text.Text(f)
text.Text.dispersion_plot(f, ["the"])
