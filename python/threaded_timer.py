#! /usr/bin/python3


import time
from threading import Thread


def timer(name, delay, repeat):
    print("Timer: " + name + " started")
    while repeat > 0:
        repeat -= 1
        time.sleep(delay)
        print(name + " : " + str(time.ctime(time.time())))
    print("Timer: " + name + " completed")


def main():
    t1 = Thread(target=timer, args=("1", 1, 3))
    t2 = Thread(target=timer, args=("2", 2, 5))

    t1.start()
    t2.start()

    print("main completed")

if __name__ == '__main__':
    main()
