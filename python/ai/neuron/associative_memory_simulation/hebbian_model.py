#! /usr/bin/python

from random import sample as random_element

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

class Brain:
	global N
	def __init__(self):
		self.pattern = list()
		for i in range(100):
			self.pattern.append(Neuron(i))#randomly generate an input pattern

	def get(self):
		return self.pattern

	def get_vector(self):
		vector = list()
		for i in range(N):
			vector.append(self.pattern[i].state)
		return vector

class Knowledge:
	"""
	Generate 'p' neuron patterns 
	"""
def main():
	a = Brain()
	print(a.get_vector())

if __name__ == "__main__":
	main()	