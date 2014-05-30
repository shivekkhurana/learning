#!/usr/bin/python

import services.converter

def main():
	chat_data = services.converter.Whatsapp( open("chat_logs/yatika.txt") )
	out_file = open("formatted.csv", "a+")

	for f_line in chat_data.formatted_lines:
		csv = ""
		for element in f_line:
			csv = csv+", "+element.encode("utf-8")
		out_file.write(csv[1:-1]+"\n")


if __name__ == '__main__':
	main()