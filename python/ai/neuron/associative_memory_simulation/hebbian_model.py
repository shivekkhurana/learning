#! /usr/bin/python

from random import sample as random_element
import numpy

N = 100 #no. of neurons in the system
p = 10  #no. of patterns stored
tmax = 100 #no. of maximum transitions\

def levenshtein(a,b):
    "Calculates the Levenshtein distance between a and b."
    n, m = len(a), len(b)
    if n > m:
        # Make sure n <= m, to use O(min(n,m)) space
        a,b = b,a
        n,m = m,n
        
    current = range(n+1)
    for i in range(1,m+1):
        previous, current = current, [i]+[0]*n
        for j in range(1,n+1):
            add, delete = previous[j]+1, current[j-1]+1
            change = previous[j-1]
            if a[j-1] != b[i-1]:
                change = change + 1
            current[j] = min(add, delete, change)
            
    return current[n]

class Neuron:
	"""
	Set and get state of neuron
	"""
	def __init__(self, label=0):
		self.state = random_element([1,-1], 1)[0]
		self.label = label

	def __repr__(self):
		return str("Neuron %s : State : %s" % (self.label, self.state))

	def get(self):
		return self.state

	def set(self, new_state):
		self.state(new_state)
		self.get() #return state by populating stack

class Pattern:
	global N
	def __init__(self):
		self.pattern = list()
		for i in range(100):
			self.pattern.append(Neuron(i).get())#randomly generate an input pattern

	def get(self):
		return self.pattern

	def update(self, new_pattern):
		self.pattern = new_pattern.get()

	def __repr__(self):
		vector = list()
		for i in range(N):
			vector.append(self.pattern[i].state)
		return str(numpy.array(vector))

class Knowledge:
	"""
	Generate 'p' neuron patterns 
	"""
	def __init__(self):
		self.xi = list()
		for i in range(p):
			self.xi.append(Pattern().get())

	def get(self):
		return self.xi

	def __repr__(self):
		return str(numpy.array(self.xi))

class Synapsis:
	def __init__(self, knowledge):
		"""
		Synapsis is the strength of connections between two neurons. An NxN matrix where w(i,j) represents connection strength between ith and jth neuron
		"""
		self.xi = knowledge.get()
		self.w = list() #NxN omega
		for i in range(p):
			row = list()
			for j in range(N):
				strength = 0
				for k in range(p):
					strength += (self.xi[k][i]*self.xi[k][j])/float(N)
					row.append(strength)
			self.w.append(row) 

	def get(self):
		return self.w

	def __repr__(self):
		return str(numpy.array(self.w))

def main():
	s0 	= Pattern() #init state of mind
	xi 	= Knowledge()

	w 	= Synapsis(xi)
	xi 	= xi.get()

	for i in range(p):
		print "Trying pattern %s"%(i)
		stemp = s0 #get init state

		convergence = float("inf")#infinity
		for j in range(tmax):
			#try tmax time for max convergence
			ldistance = levenshtein(xi[i], stemp.get())
			#todo apply the update formula here
			if ldistance < convergence:
				convergence = ldistance
		print "Max convergence : %s"%(convergence)

if __name__ == "__main__":
	main()	