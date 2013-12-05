#!/usr/lib/python

from time import sleep
from math import sin, cos
import pymouse

m 	 			= pymouse.PyMouse()
[res_x, res_y] 	= m.screen_size()

(x,y) = (res_x/2.0,res_y/2.0) #init coordinates

for i in range(5):
	print("Sleeping : %s"%i)
	sleep(1)

m.press(x,y)
m.drag(x+50, y+50)
sleep(3)
m.release(x+50, y+50)