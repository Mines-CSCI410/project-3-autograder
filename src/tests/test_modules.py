import unittest
import subprocess
from os import path

from gradescope_utils.autograder_utils.decorators import weight, number

def module(name):
    if not path.isfile(f'/autograder/source/{name}.v'):
        return 100

    subprocess.run(['iverilog', '-o', f'/tmp/{name}_test.vvp', f'/autograder/grader/tests/{name}_test.v', f'/autograder/source/{name}.v'])

    out = open(f'/tmp/{name}.out', 'w')
    subprocess.call(['vvp', f'/tmp/{name}_test.vvp'], stdout=out)

    return subprocess.call(['diff', f'/tmp/{name}.out', f'/autograder/grader/tests/expected-outputs/{name}.cmp', '-qs'])

class BasicTest(unittest.TestCase): 
    @weight(95/15)
    @number(1)
    def test_and(self):
        self.assertEqual(module('and'), 0)

    @weight(95/15)
    @number(2)
    def test_or(self):
        self.assertEqual(module('or'), 0)

    @weight(95/15)
    @number(3)
    def test_xor(self):
        self.assertEqual(module('xor'), 0)

    @weight(95/15)
    @number(4)
    def test_not(self):
        self.assertEqual(module('not'), 0)

    @weight(95/15)
    @number(5)
    def test_mux(self):
        self.assertEqual(module('mux'), 0)

    @weight(95/15)
    @number(6)
    def test_dmux(self):
        self.assertEqual(module('dmux'), 0)

    @weight(95/15)
    @number(7)
    def test_and16(self):
        self.assertEqual(module('and16'), 0)

    @weight(95/15)
    @number(8)
    def test_or16(self):
        self.assertEqual(module('or16'), 0)

    @weight(95/15)
    @number(9)
    def test_not16(self):
        self.assertEqual(module('not16'), 0)

    @weight(95/15)
    @number(10)
    def test_mux16(self):
        self.assertEqual(module('mux16'), 0)

    @weight(95/15)
    @number(11)
    def test_mux4way16(self):
        self.assertEqual(module('mux4way16'), 0)

    @weight(95/15)
    @number(12)
    def test_mux8way16(self):
        self.assertEqual(module('mux8way16'), 0)

    @weight(95/15)
    @number(13)
    def test_dmux4way(self):
        self.assertEqual(module('dmux4way'), 0)

    @weight(95/15)
    @number(14)
    def test_dmux8way(self):
        self.assertEqual(module('dmux8way'), 0)

    @weight(95/15)
    @number(14)
    def test_or8way(self):
        self.assertEqual(module('or8way'), 0)
