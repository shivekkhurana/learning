from prime_factors import p_factors

def lcm(r):
	#l is a list of numbers whose lcm needs to be calculated
	l = []
	for i in r:
		l = l+list(p_factors(i))

	lcm = 1
	for i in set(l):
		lcm *=i
	return lcm

print lcm(list(range(1,11)))