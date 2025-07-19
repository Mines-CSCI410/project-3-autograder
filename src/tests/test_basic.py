import unittest

from gradescope_utils.autograder_utils.decorators import weight, number

class BasicTest(unittest.TestCase):
    def setUp(self) -> None:
        pass
    
    @weight(1)
    @number(1.1)
    def test_tautology(self):
        '''Always evaluates to true'''
        self.assertEqual(True, True)
