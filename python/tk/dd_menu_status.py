#! /usr/bin/python

from tkinter import *

def dd():
    print("dd clicked")

def main():
    window = Tk()
    
    menu_bar = Menu(window)
    window.config(menu=menu_bar)

    file_sub_menu = Menu(menu_bar, tearoff=0)
    file_sub_menu.add_command(label="New", command=dd)
    file_sub_menu.add_separator()
    file_sub_menu.add_command(label="Open", command=dd)
    file_sub_menu.add_command(label="Save", command=dd)
    file_sub_menu.add_command(label="Save As", command=dd)
    menu_bar.add_cascade(label="File", menu=file_sub_menu)

    edit_sub_menu = Menu(menu_bar, tearoff=0)
    edit_sub_menu.add_command(label="Copy", command=dd)
    edit_sub_menu.add_command(label="Cut", command=dd)
    edit_sub_menu.add_command(label="Paste", command=dd)
    menu_bar.add_cascade(label="Edit", menu=edit_sub_menu)

    ################

    tool_bar = Frame(window, bg="gray21")
    back_button = Button(tool_bar, text="◀", command=dd)
    back_button.pack(side=LEFT, padx=2, pady=2)
    forward_button = Button(tool_bar, text="▶", command=dd)
    forward_button.pack(side=LEFT, padx=2, pady=2)
    refresh_button = Button(tool_bar, text="↻", command=dd)
    refresh_button.pack(side=LEFT, padx=2, pady=2)
    tool_bar.pack(side=TOP, fill=X)

    ################
    status = Label(window, text="☮☮☮", bd=1, relief=SUNKEN, anchor=W, bg="dark slate gray")
    status.pack(side=BOTTOM, fill=X)

    window.mainloop()

if __name__ == '__main__':
    main()
