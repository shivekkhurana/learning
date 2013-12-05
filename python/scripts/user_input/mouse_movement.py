#!/usr/lib/python

from time import sleep
from math import sin, cos
import pymouse

m 	 			= pymouse.PyMouse()
[res_x, res_y] 	= m.screen_size()

(x,y) = (res_x/2.0+300,res_y/2.0+300) #init coordinates
r = 0

sleep(5)

while r < y/3:
	r += 5
	print("Radius : %s"%r)

	theta = 0
	m.move(x+r, y) #positon at radius

	while theta < 2*3.14:
		m.click(x+r*cos(theta), y+r*sin(theta))
		theta += 0.8/r