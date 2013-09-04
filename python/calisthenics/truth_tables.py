#!/usr/bin/python
#coding=utf-8

#imports 
import re

#globals
order     = ['~', '.', '+']
operators = ['~', '.', '+', '->', '=>']
symbols   = list('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ')

class Conversions:
	def __init__(self, string):
		self.string = string.split