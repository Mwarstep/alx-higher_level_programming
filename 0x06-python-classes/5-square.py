#!/usr/bin/python3
"""Define a class square."""

class Square:
    """Representing a square"""

    def __init__(self, size):
        """Initializing a new square.
        Args:
        size (int): The size of new square.
        """
        self.size = size

    @property
    def size(self):
        """Sets the current size of square."""
        return (self.__size)

    @size.setter
    def size(self, value):
        if not isinstance(value, int):
            raise TypeError("size must be an integer")
        elif value < 0:
            raise ValueError("size must be >= 0")
        self.__size = value

    def area(self):
        """Returns the currrent area of the Square"""
        return (self.__size * self.__size)

    def my_print(self):
        """Prints out the square with the character."""
        for i in range(0, self.__size):
            [print("#", end="") for j in range(self.__size)]
            print("")
        if self.__size == 0:
            print("")
