def fib(n):
    a = 0
    b = 1
    c = a + b
    counter = 1
    yield c
    while counter < n:
        a = b
        b = c
        c = a + b
        counter += 1
        yield c
