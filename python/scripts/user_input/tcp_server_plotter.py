#!/usr/bin/python

import numpy as np
import matplotlib.pyplot as plt
import socket 

host = '' 
port = 50000 
backlog = 5 
size = 1024 
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM) 
s.bind((host,port)) 
s.listen(backlog) 

plt.ion() #set interactive
plt.show()

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

def main():	
	try:
		while True: #poll
			client, address = s.accept() 
			data = client.recv(size).split(',')
			if len(data) > 0:
				try:
					(ax, ay) = (float(data[3])*ax_factor, float(data[4])*ay_factor)
				except ValueError:
					(ax,ay) = (0,0) #fix headings transfer
				ax_list.append(ax)
				#ay_list.append(ay)
				#az_list.append(float(data[5])*az_factor)
				t_list.append(t)

				plt.plot(t_list, ax_list, color="red", linewidth=1.0, linestyle="-", label="Ax")
				#plt.plot(t_list, ay_list, color="green", linewidth=1.0, linestyle="-",  label="Ay")
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
					plt.axhline(y=thresh_lower, c='k', ls='--')		

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