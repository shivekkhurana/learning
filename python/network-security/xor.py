import binascii

class XorManager:

    def __init__(self, payload):
        self.payload = payload
    

    def _string_to_binary_string(self, string):
        return ''.join('{:08b}'.format(ord(x)) for x in string)

    def _bin_to_string(self, binary):
        return binary

    def encrypt(self, key):
        payload_binary = self._string_to_binary_string(self.payload)
        key_binary = self._string_to_binary_string(key)

        key_len = len(key_binary)
        payload_len = len(payload_binary)

        if key_len < payload_len:
            diff = payload_len - key_len
            key_binary = key_binary.zfill(diff)

        if payload_len < key_len:
            diff = key_len - payload_len
            payload_binary = payload_binary.zfill(diff)

        print("plb", payload_binary)
        print("kb", key_binary)

        return ''.join(str(int(a) ^ int(b)) for a,b in zip(payload_binary, key_binary))

    def decrypt(self, key):
        payload_binary = self.payload
        print("Decrypt Pl", payload_binary)
        key_binary = self._string_to_binary_string(key)

        key_len = len(key_binary)
        payload_len = len(payload_binary)

        if key_len < payload_len:
            diff = payload_len - key_len
            key_binary = key_binary.zfill(diff)

        if payload_len < key_len:
            diff = key_len - payload_len
            payload_binary = payload_binary.zfill(diff)

        binary_original = ''.join(str(int(a) ^ int(b)) for a,b in zip(payload_binary, key_binary))
        
        return binary_original
        return binascii.unhexlify('%x' % int('0b'+binary_original, 2))


def main():
    payload = raw_input("Payload : ")
    key = raw_input("Key : ") 

    # payload = "Aside: this isn't related to your issue here, but one thing that often surprises people"
    # key = "BatmanVsSupermanMainBatmanJeetega"
    
    x = XorManager(payload)
    cypher = x.encrypt(key)
    print("Encrypt", cypher)
    original = XorManager(cypher).decrypt(key)
    # print("Decrypting ...", original)


if __name__ == '__main__':
    main()