#! /usr/bin/python3

import tkinter


def main():
    window = tkinter.Tk()

    username = tkinter.Label(window, text="username")
    username_entry = tkinter.Entry(window)
    username.grid(row=0)
    username_entry.grid(row=0, column=1)

    password = tkinter.Label(window, text="password")
    password_entry = tkinter.Entry(window)
    password.grid(row=1)
    password_entry.grid(row=1, column=1)

    submit_button = tkinter.Button(window, text="submit")
    submit_button.grid(row=3, column=1)

    keep_log_in = tkinter.Checkbutton(window, text="Keep logged in")
    keep_log_in.grid(columnspan=2)    

    window.mainloop()

if __name__ == '__main__':
    main()
