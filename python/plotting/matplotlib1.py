#!/usr/bin/python

from matplotlib import pyplot
from pylab import randn

x = randn(1000)
print x

y = pyplot.hist(x, bins=100)
pyplot.show()