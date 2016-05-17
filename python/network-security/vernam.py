from random import randint

import string


class Vernam(object):

    def __init__(self):
        super(Vernam, self).__init__()
        self.chars = string.lowercase + ' '

    def o(self, c):
        return self.chars.find(c)

    def c(self, o):
        if o < len(self.chars) and o >= 0:
            return self.chars[o]
        return None

    def decrypt(self, payload, key):
        key = key.split(',')
        key = [int(k) for k in key]
        number_equivalents = (self.o(c) for c in payload)
        number_equivalents = [n for n in number_equivalents if n != -1]
        operated = (
            n - key[index]
            for index, n in enumerate(number_equivalents)
        )
        modded = (o % len(self.chars) for o in operated)
        decypher = [self.c(m) for m in modded]
        return ''.join(decypher)

    def encrypt(self, payload):
        payload = payload.lower()
        number_equivalents = (self.o(c) for c in payload)
        number_equivalents = [n for n in number_equivalents if n != -1]
        randints = [randint(0, 99) for n in number_equivalents]
        operated = (
            randints[index] + n 
            for index, n in enumerate(number_equivalents)
        )
        modded = (o % len(self.chars) for o in operated)
        cypher = [self.c(m) for m in modded]
        return (''.join(cypher), ','.join([str(i) for i in randints]))


def main():
    payload = raw_input("Enter Payload : ")
    #payload = 'all the students of class are good'
    encrypt = Vernam().encrypt(payload)
    cipher = encrypt[0]
    key = encrypt[1]
    print(cipher, key)
    print ('Decipher', Vernam().decrypt(cipher, key))

if __name__ == '__main__':
    main()
