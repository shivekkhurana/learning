def primeNumbers(n):
    # Found this example on Wikipedia: http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
    # Create a candidate list within which non-primes will be
    # marked as None; only candidates below sqrt(n) need be checked. 
    candidates = list(range(n+1))
    
    # Square root of n
    fin = int(n**0.5)
    
    # Loop over the candidates, marking out each multiple.
    for i in xrange(2, fin+1):
        if candidates[i]:
            candidates[2*i::i] = [None] * (n//i - 1)
 
    # Filter out non-primes and return the list.
    return [i for i in candidates[2:] if i]

def p_factors(n):
    # Generators all of the prime factors for n
    
    # The largest number that a prime factor could be
    maxPossiblePrimeNumber = int(n**0.5)
    
    # List of all prime numbers up to the square root of n
    primes = primeNumbers(maxPossiblePrimeNumber)

    while n > 1:
        for p in primes:
            # This is a prime factor
            if n % p == 0:
                # Set n to be the result of the division of n by the current prime number (p)
                n = n / p
                yield p