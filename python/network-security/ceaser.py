
import string
import itertools

class Ceaser:
    def __init__(self, payload, by=3, direction="right"):
        self.payload = payload
        self.by = by
        self.direction = direction

    def _encrypt_alphabet(self, alphabet):
        ord_val = ord(alphabet) + self.by
        if self.direction == 'left': ord_val = ord(alphabet) - self.by

        if ord_val > 256 or ord_val < 0: ord_val = ord_val%256
        return chr(ord_val)

    def _decrypt_alphabet(self, alphabet):
        ord_val = ord(alphabet) + self.by
        if self.direction == 'right': ord_val = ord(alphabet) - self.by

        if ord_val > 256 or ord_val < 0: ord_val = ord_val%256
        return chr(ord_val)

    def encrypt(self):
        return ''.join([self._encrypt_alphabet(a) for a in self.payload])

    def decrypt(self):
        return ''.join([self._decrypt_alphabet(a) for a in self.payload])                       

def main():
    payload = str(raw_input("Enter Payload : "))
    by = int(raw_input('Enter shift by : '))
    direction = str(raw_input('Enter shift direction (r or l): '))
    if direction == 'l': direction = 'left'
    else: direction = 'right'

    c = Ceaser(payload, by, direction) 

    print('\nEncrypt\n')
    print(c.encrypt())

    print('\nDecrypting ...\n')
    print(Ceaser(c.encrypt(), by, direction).decrypt())

if __name__ == '__main__':
    main()

        