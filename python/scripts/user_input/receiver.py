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

import sys
import os
import math
import time
import SocketServer

PORTNO = 10552
class handler(SocketServer.DatagramRequestHandler):
	def handle(self):
		newmsg = self.rfile.readline().rstrip()
		print newmsg

s = SocketServer.UDPServer(('',PORTNO), handler)
print "Awaiting UDP messages on port %d" % PORTNO
s.serve_forever()