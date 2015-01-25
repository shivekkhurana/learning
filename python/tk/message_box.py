#! /usr/bin/python3

import tkinter
import tkinter.messagebox as mb

def main():
    window = tkinter.Tk()


    mb.showinfo("Yo yo title", "Yo yo body")

    answer = mb.askquestion("Do you ...", "Do something ?")

    if answer == "yes":
        print("Ok")

    window.mainloop()

if __name__ == '__main__':
    main()