#generate random strings (32 char long) without vowels
#September 14/2012

import random

key = "bcdfghjklmnpqrstwxyzv"
flag = True

while(flag):
    rand = ''
    for i in range(32):
        rand += random.choice(key)
    print rand
    if(not raw_input("Continue ? y/n : ") == 'y'):
        flag = False

