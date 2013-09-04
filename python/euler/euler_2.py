a = 0
b = 1
s = 0
while(True):
        c = a + b
        a = b
        b = c
        if c > 4000000: break
        if c%2 == 0 : s += c

print s == 4613732
 
