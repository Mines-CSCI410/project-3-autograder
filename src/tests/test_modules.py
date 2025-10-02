import unittest
import subprocess
from os import path

from gradescope_utils.autograder_utils.decorators import weight, number

class TestBase(unittest.TestCase): 
    def assertModulePasses(self, name):
        if not path.isfile(f'/autograder/source/{name}.v'):
            raise AssertionError(f'{name}.v not found!')

        subprocess.run(['iverilog', '-o', f'/tmp/{name}_test.vvp', f'/autograder/grader/tests/{name}_test.v', f'/autograder/source/{name}.v'])

        out = open(f'/tmp/{name}.out', 'w')
        subprocess.call(['vvp', f'/tmp/{name}_test.vvp'], stdout=out)

        res = subprocess.call(['diff', f'/tmp/{name}.out', f'/autograder/grader/tests/expected-outputs/{name}.cmp', '-qs', '--strip-trailing-cr'])
        self.assertEqual(res, 0)

class TestModules(TestBase): 
    @weight(95/15)
    @number(1)
    def test_and(self):
        self.assertModulePasses('and')

    @weight(95/15)
    @number(2)
    def test_or(self):
        self.assertModulePasses('or')

    @weight(95/15)
    @number(3)
    def test_xor(self):
        self.assertModulePasses('xor')

    @weight(95/15)
    @number(4)
    def test_not(self):
        self.assertModulePasses('not')

    @weight(95/15)
    @number(5)
    def test_mux(self):
        self.assertModulePasses('mux')

    @weight(95/15)
    @number(6)
    def test_dmux(self):
        self.assertModulePasses('dmux')

    @weight(95/15)
    @number(7)
    def test_and16(self):
        self.assertModulePasses('and16')

    @weight(95/15)
    @number(8)
    def test_or16(self):
        self.assertModulePasses('or16')

    @weight(95/15)
    @number(9)
    def test_not16(self):
        self.assertModulePasses('not16')

    @weight(95/15)
    @number(10)
    def test_mux16(self):
        self.assertModulePasses('mux16')

    @weight(95/15)
    @number(11)
    def test_mux4way16(self):
        self.assertModulePasses('mux4way16')

    @weight(95/15)
    @number(12)
    def test_mux8way16(self):
        self.assertModulePasses('mux8way16')

    @weight(95/15)
    @number(13)
    def test_dmux4way(self):
        self.assertModulePasses('dmux4way')

    @weight(95/15)
    @number(14)
    def test_dmux8way(self):
        self.assertModulePasses('dmux8way')

    @weight(95/15)
    @number(14)
    def test_or8way(self):
        self.assertModulePasses('or8way')
