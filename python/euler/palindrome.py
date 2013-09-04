def is_palindrome(n):
	n = str(n)
	if n == n[::-1]:
		#n == n reversed
		return True
	return False
