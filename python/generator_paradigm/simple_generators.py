def countdown(n):
    while n >= 0:
        yield n
        n -= 1

# for i in countdown(10):
#     print(i)

c10 = countdown(10)

while(True):
    try:
        print(c10.__next__())
    except StopIteration as e:
        break

# generators can consumed only once
a = [1, 2, 3, 4]
bi = [2*x for x in a]
bg = (2*x for x in a)

print(bi)
print(bg)
