#!/usr/bin/python

import services.converter

def main():
	chat_data = services.converter.Whatsapp( open("chat_logs/yatika.txt") )
	chat_data.save_as_csv()
	


if __name__ == '__main__':
	main()