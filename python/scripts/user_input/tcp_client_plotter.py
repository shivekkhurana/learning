#!/usr/bin/python

import sys
from socket import socket, AF_INET, SOCK_STREAM
import pymouse
import time
import numpy as np
import matplotlib.pyplot as plt

m = pymouse.PyMouse()

fig=plt.figure(num=None, figsize=(16, 9), dpi=75, facecolor='w', edgecolor='k')
plt.axis([0,10,-0.006, 0.006])


def main():
	(x,y) = m.position()

	factor_x = 50000
	factor_y = 30000
	
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
			t = 0
			while True:
				#poll
				data = s.recv(1024).split(',')
				if len(data) > 0:
					ax=data[3]
					plt.scatter(t,ax)
					t+=0.003
					plt.draw()
					print t,data[3]

		except Exception as inst:
			print sys.exc_info()[0]
			raise
			
		

if __name__ == "__main__":
	main()