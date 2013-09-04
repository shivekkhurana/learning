from palindrome import is_palindrome
from itertools import permutations

def lar_3_palindrome():
	d3 = list(range(100,1000))
	d3 = list(permutations(d3,2))
	a = 0
	for elem in d3:
		n = elem[0] * elem[1]
		if is_palindrome(n):
			if n>a:
				a = n
	return a

print lar_3_palindrome()