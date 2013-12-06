import time
import numpy as np
import matplotlib.pyplot as plt

fig=plt.figure(num=None, figsize=(16, 9), dpi=75, facecolor='w', edgecolor='k')
plt.axis([0,1000,0,1])

i=0

plt.ion()
plt.show()

while i <1000:
    temp_y=np.random.random()
    plt.scatter(i,temp_y)
    i+=1
    plt.draw()
    time.sleep(0.05)