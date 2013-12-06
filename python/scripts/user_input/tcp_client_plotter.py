#!/usr/bin/python

import sys
from socket import socket, AF_INET, SOCK_STREAM
import pymouse
import time
import numpy as np
import matplotlib.pyplot as plt

def main():
	if len(sys.argv) != 3:
		print "\nusage : python tcp_client.py #host #port\n"
	else:
		host = sys.argv[1]
		port = int(sys.argv[2])

		s = socket(AF_INET, SOCK_STREAM)

		try:
			plt.ion() #set interactive
			plt.show()
		
			s.connect((host, port))

			(ax_list, ay_list, az_list) = ([],[],[])
			(ax_factor, ay_factor, az_factor) = (20.0,20.0,20.0)
			
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

			
			
			while True: #poll
				data = s.recv(1024).split(',')
				if len(data) > 0:
					(ax, ay) = (float(data[3])*ax_factor, float(data[4])*ay_factor)
					ax_list.append(ax)
					ay_list.append(ay)
					#az_list.append(float(data[5])*az_factor)
					t_list.append(t)

					plt.plot(t_list, ax_list, color="red", linewidth=1.0, linestyle="-", label="Ax")
					plt.plot(t_list, ay_list, color="green", linewidth=1.0, linestyle="-",  label="Ay")
					#plt.plot(t_list, az_list, color="blue", linewidth=1.0, linestyle="-", label="Az")

					t+=t_step

					if t > x_max:
						#move axis forward
						x_min += t_step
						x_max += t_step
						plt.axis([x_min,x_max,y_min,y_max])		

					if ax < thresh_lower:
						plt.axhline(y=thresh_lower, c='w', ls='-')
						thresh_lower = ax
						t_lower = plt.axhline(y=thresh_lower, c='k', ls='--')		

					if ax > thresh_upper:
						plt.axhline(y=thresh_upper, c='w', ls='-')
						thresh_upper = ax
						plt.axhline(y=thresh_upper, c='k', ls='--')		
	
					plt.draw()
					print t,data[3] #dump on terminal

		except Exception as inst:
			print sys.exc_info()[0]
			print data
			raise
			
		

if __name__ == "__main__":
	main()


					