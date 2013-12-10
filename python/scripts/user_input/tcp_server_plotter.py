#!/usr/bin/python

import numpy as np
import matplotlib.pyplot as plt
####################################
# Sample Receiver Script
# [Usage]
#	python receiver.py
#	python receiver.py > data.csv
# [Data Format]
#	id,time,x,y,z
# [Exaple]
#	1,118.533,-0.398,-0.199,-0.978
####################################

import os
import math
import time
import SocketServer

PORTNO = 10552
class handler(SocketServer.DatagramRequestHandler):
	plt.ion() #set interactive
	plt.show()

	(ax_list, ay_list, az_list) = ([],[],[])
	(ax_factor, ay_factor, az_factor) = (1.0,1.0,1.0)
	
	t_step = 0.3
	t = 0
	t_list = []

	
	fig=plt.figure(num=None, figsize=(13, 9), dpi=75, facecolor='w', edgecolor='k')
	(thresh_lower, thresh_upper) = (0,0)
	x_min = 0
	x_max = t_step*5
	y_min = -2
	y_max = 2
	plt.axis([x_min,x_max,y_min,y_max])

	def handle(self):
		data = self.rfile.readline().rstrip().split(',')

		if len(data) > 0:
			try:
				(ax, ay, az) = (float(data[1])*self.ax_factor, float(data[2])*self.ay_factor, float(data[3])*self.az_factor)
			except ValueError:
				(ax, ay, az) = (0,0,0) #fix headings transfer
			self.ax_list.append(ax)
			#self.ay_list.append(ay)
			#self.az_list.append(az)
			self.t_list.append(self.t)

			plt.plot(self.t_list, self.ax_list, color="red", linewidth=1.0, linestyle="-", label="Ax")
			#plt.plot(self.t_list, self.ay_list, color="green", linewidth=1.0, linestyle="-",  label="Ay")
			#plt.plot(self.t_list, self.az_list, color="blue", linewidth=1.0, linestyle="-", label="Az")

			self.t+=self.t_step

			if self.t > self.x_max:
				#move axis forward
				self.x_min += self.t_step
				self.x_max += self.t_step
				plt.axis([self.x_min, self.x_max, self.y_min, self.y_max])		

			if ax < self.thresh_lower:
				plt.axhline(y=self.thresh_lower, c='w', ls='-')
				self.thresh_lower = ax
				plt.axhline(y=self.thresh_lower, c='k', ls='--')		

			if ax > self.thresh_upper:
				plt.axhline(y=self.thresh_upper, c='w', ls='-')
				self.thresh_upper = ax
				plt.axhline(y=self.thresh_upper, c='k', ls='--')		

			plt.draw()
			print self.t,data #dump on terminal



s = SocketServer.UDPServer(('',PORTNO), handler)
print "Awaiting UDP messages on port %d" % PORTNO
s.serve_forever()