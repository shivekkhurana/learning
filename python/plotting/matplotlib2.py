import numpy as np
from matplotlib import pyplot

x = np.arange(0, 500, 0.1)
print x

y = np.sin(x)
print y

pyplot.plot(x, y)
pyplot.show()