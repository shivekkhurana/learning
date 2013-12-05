#!/usr/bin/python

import sys
from socket import socket, AF_INET, SOCK_STREAM
import pymouse

m = pymouse.PyMouse()

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
			s.connect((host, port))
			while True:
				#poll
				data = s.recv(1024).split(',')
				if len(data) > 0:
					m.move(x+factor_x*float(data[3]),y+factor_y*float(data[4]))
					(x,y) = m.position()
					print x,y
		except Exception as inst:
			print sys.exc_info()[0]
			raise
			
		

if __name__ == "__main__":
	main()