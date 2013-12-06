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
			plt.ion()
			plt.show()
		
			s.connect((host, port))

			fig=plt.figure(num=None, figsize=(16, 9), dpi=75, facecolor='w', edgecolor='k')

			x_min = 0
			x_max = 0.5
			y_min = -30
			y_max = 30

			t_step = 0.003

			plt.axis([x_min,x_max,y_min,y_max])
			
			t_list = []
			ax_list = []
			t = 0
			ax_factor = 10.0
			
			while True:
				#poll
				data = s.recv(1024).split(',')
				if len(data) > 0:
					ax_list.append(float(data[3])*ax_factor)
					t_list.append(t)
					plt.plot(t_list, ax_list, color="blue", linewidth=1.0, linestyle="-")
					t+=t_step

					if t > x_max:
						x_min = x_max
						x_max = 2*x_max
						plt.axis([x_min,x_max,y_min,y_max])			
					plt.draw()
					print t,data[3]

		except Exception as inst:
			print sys.exc_info()[0]
			raise
			
		

if __name__ == "__main__":
	main()