#! /usr/bin/python

"""
Program to sense things todo before someone leaves the house
Usage:
    python sense.py -p=Ron,Jack (list of people leaving the house)
                    -l (list people in the house)
                    -g (start the gui)
"""

import sys
import tkinter


class Person(object):
    def __init__(self, name, age):
        object.__init__(self)
        self.name = name
        self.age = age

    def __repr__(self):
        return self.name + " : " + str(self.age)

    def __str__(self):
        return self.__repr__()


class Actionable(object):
    """
        Interface for all actionables
    """
    def __init__(self, open=None, close=None):
        object.__init__(self)
        self.open = open
        self.close = close

    def take_action(self, **kwargs):
        """
            Take action based on args and object conditions
        """
        raise NotImplementedError


class AgeRestrictedActionable(Actionable):
    def __init__(self, name, threshold_age, open, close):
        Actionable.__init__(self, open, close)
        self.threshold_age = threshold_age
        self.name = name

    def take_action(self, **kwargs):
        if kwargs["max_age"] < self.threshold_age:
            return self.close
        else:
            return self.open


class Door(AgeRestrictedActionable):
    def __init__(self):
        super(Door, self).__init__(name="Main Door", threshold_age=12, open="Unlock", close="Lock")


class Dog(AgeRestrictedActionable):
    def __init__(self):
        super(Dog, self).__init__(name="Sam the Dog", threshold_age=7, open="Untie", close="Tie")


class GasStove(AgeRestrictedActionable):
    def __init__(self):
        super(GasStove, self).__init__(name="Gas Stove", threshold_age=15, open="Open Supply", close="Close Supply")


def people():
    return (
        Person("Ron", 26),
        # Person("Ricardo", 28),
        Person("Maya", 28),
        Person("Naina", 1),
        Person("Jack", 9),
        # Person("Michael", 53),
        # Person("Jane", 51)
    )


def things():
    return (
        Door(),
        GasStove(),
        Dog()
    )


class Gui(object):
    def __init__(self):
        object.__init__(self)
        self.window = tkinter.Tk()
        self.people_inside_label = tkinter.Label(
            self.window,
            text=", ".join(list(person.name + " - " + str(person.age) for person in people()))
        )
        self.people_inside_label.pack(side=tkinter.TOP, fill=tkinter.X)

        self.queries = tkinter.Entry(self.window, width=80)
        self.queries.pack(side=tkinter.TOP, fill=tkinter.X)

        self.submit = tkinter.Button(self.window, text="Submit", command=self.process)
        self.submit.pack(side=tkinter.RIGHT)

        self.output = tkinter.Label(self.window, text="")
        self.output.pack(side=tkinter.LEFT)

    def show(self):
        self.window.mainloop()

    def process(self):
        queries = self.queries.get()
        going_out = [person.name for person in people() if person.name in queries]
        self.output.config(text=str(list(what_when(going_out))))


def what_when(going_out):
    people_inside = (person for person in people() if person.name not in going_out)
    ages = [person.age for person in people_inside]
    max_age = max(ages) if ages else 0
    todo_list = (thing.name + " : " + thing.take_action(max_age=max_age) for thing in things())
    return todo_list


def main(goes_out):
    for todo in what_when(goes_out):
        print(todo)

if __name__ == "__main__":
    if len(sys.argv) == 1:
        print(__doc__)

    elif sys.argv[1] == '-l':
        for p in people():
            print(p)

    elif sys.argv[1] == '-g':
        Gui().show()

    elif sys.argv[1][0:2] == '-p':
        main([arg for arg in sys.argv[1][3:].split(',')])
