import pyDes

def main():
    data = raw_input('Enter data to be encrypted : ')
    k = pyDes.des("DESCRYPT", pyDes.CBC, "\0\0\0\0\0\0\0\0", pad=None, padmode=pyDes.PAD_PKCS5)
    e = k.encrypt(data)
    print('encrypt', e)
    print('length', len(e))


if __name__ == '__main__':
    main()