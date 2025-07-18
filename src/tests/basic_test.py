import unittest
import subprocess

from gradescope_utils.autograder_utils.decorators import weight, number

class BasicTest(unittest.TestCase):
    def setUp(self) -> None:
        return super().setUp()
    
    @weight(1)
    @number(1.1)
    def tautology(self):
        '''Always evaluates to true'''
        self.assertEqual(True, True)
