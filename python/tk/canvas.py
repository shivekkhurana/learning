#! /usr/bin/python3

from tkinter import *


def main():
    window = Tk()
    canvas = Canvas(window, width=200, height=200)
    canvas.pack()
    
    black_line = canvas.create_line(0, 0, 100, 100)

    red_line = canvas.create_line(0, 200, 100, 100, fill="red2")

    green_box = canvas.create_rectangle(30, 30, 80, 80, fill="goldenrod1")

    canvas.delete(red_line)
    window.mainloop()

if __name__ == '__main__':
    main()
