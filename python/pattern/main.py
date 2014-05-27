#!/usr/bin/python

import services.converter

def main():
	chat_data = services.converter.Whatsapp( open("yatika.txt") )

	print chat_data.text(sender="Yatika ")


if __name__ == '__main__':
	main()