#! /usr/bin/python3

from tkinter import *


def main():
    window = Tk()

    iphone = PhotoImage(file="iphone.png")
    nexus = PhotoImage(file="nexus.png")

    iphone_label = Label(window, image=iphone)
    nexus_label = Label(window, image=nexus)

    iphone_label.pack(side=LEFT)
    nexus_label.pack(side=LEFT)

    window.mainloop()

if __name__ == '__main__':
    main()
