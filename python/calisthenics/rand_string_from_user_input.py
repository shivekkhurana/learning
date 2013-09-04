#rand string based on user input
#September 14/2012


#externals
import random
from string import atoi

vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
user_t = raw_input('Enter text to be evaluated : ')
key = ''

#key gen
for i in range(len(user_t)):
    char = user_t[i]
    if((char not in vowels) and (char != ' ')):
        key += char

##
for j in range(atoi(raw_input('How many random strings do you want : '))):
    rand = ''
    for i in range(5):
        rand += random.choice(key)
    print rand
