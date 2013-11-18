#! /usr/bin/python

from random import sample as random_element
import numpy

N = 100 #no. of neurons in the system
p = 10  #no. of patterns stored

class Synapsis:
	def __init__(self):
		pass

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
		return state

	def set(self, new_state):
		self.state(new_state)
		self.get() #return state by populating stack

class Pattern:
	global N
	def __init__(self):
		self.pattern = list()
		for i in range(100):
			self.pattern.append(Neuron(i))#randomly generate an input pattern

	def get(self):
		return self.pattern

	def __repr__(self):
		vector = list()
		for i in range(N):
			vector.append(self.pattern[i].state)
		return str(numpy.array(vector))

	def update(self, new_pattern):
		self.pattern = new_pattern.get()

class Knowledge:
	"""
	Generate 'p' neuron patterns 
	"""
	def __init__(self):
		self.xi = list()
		for i in range(p):
			self.xi.append(Pattern())

	def get(self):
		return self.xi

	def __repr__(self):
		return str(numpy.array(self.xi))

def main():
	a = Pattern()
	print(a)

if __name__ == "__main__":
	main()	