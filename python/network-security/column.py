from random import randint

class Column(object):
    def __init__(self, columns = 5):
        super(Column, self).__init__()
        self.columns = columns

    def encrypt(self, payload):
        matrix = []
        payload = payload.replace(' ', '')
        complete = False
        while True:
            row = []
            for i in range(self.columns):
                try:
                    row.append(payload[0])
                    payload = payload[1:]
                except IndexError:
                    complete = True
                    done = len(row)
                    left = self.columns - done
                    for j in range(left):
                        row.append(chr(randint(97,26+97)))
            
            matrix.append(row)
            if (complete): break

        cypher = ''
        for j in xrange(self.columns):
            for i in xrange(len(matrix)):
                cypher = cypher + matrix[i][j]
            cypher = cypher + ' '
        return cypher

    def decrypt(self, payload):
        columns = payload.split(' ')
        matrix = []
        [matrix.append(list(column)) for column in columns]
    
        matrix = [m for m in matrix if m]
        cipher_columns = len(matrix)
        cipher_rows = len(matrix[0])

        decrypt = ''

        for j in range(cipher_rows):
            for i in range(cipher_columns):
                decrypt = decrypt +  matrix[i][j]

        return decrypt

def main():
    payload = raw_input("Enter Payload : ")
    c = raw_input("Enter Columns : ")
    #payload = 'All the students of third year are intelligent'
    encrypt = Column(int(c)).encrypt(payload)
    print(encrypt)

    decrypt = Column(int(c)).decrypt(encrypt)
    print(decrypt)

if __name__ == '__main__':
    main()