
# iterating over lists
for i in [1, 2, 3, 4, 5]:
    print(i)

# iterating over dicts
prices = {
    'GOOG': 14,
    'AAPL': 20
}

for key, value in prices.items():
    print("%s : %s" % (key, value))

# iterating over strings
for c in "Hello World!":
    print(c)

# iterating over files
for line in open("ref.txt"):
    print(line)

# many functions consume iterables
s = [1, 2, 5, 9, 10]

# reductions
print("Sum is %d" % sum(s))
print("Min is %d" % min(s))
print("Max is %d" % max(s))

# constructors
l = list(s)
print(l)

s = set(s)
print(s)

d = dict(enumerate(s))
print(d)

t = tuple(s)
print(t)

it = iter(s)

while(True):
    try:
        print(it.__next__())
    except StopIteration as e:
        print("StopIteration Exception Caught")
        break


# info : any object with __iter__ and __next__ methods is said to be iterable

# custom iterable
class CountDown(object):

    """Count down from n to 0"""

    def __init__(self, n):
        super(CountDown, self).__init__()
        self.n = n

    def __iter__(self):
        return self

    def __next__(self):
        if self.n <= 0:
            raise StopIteration
        r = self.n
        self.n -= 1
        return r

for i in CountDown(10):
    print(i)
