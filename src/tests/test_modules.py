import unittest
import subprocess

from gradescope_utils.autograder_utils.decorators import weight, number

class BasicTest(unittest.TestCase):
    def test_module(self, name):
        subprocess.run(f'iverilog -o /tmp/{name}_test.vvp /autograder/source/tests/{name}_test.v /autograder/submission/{name}.v')
        subprocess.run(f'vvp /tmp/{name}_test.vvp | head -n -1 1> /tmp/{name}.out')
        res = subprocess.run(f'diff /tmp/{name}.out /autograder/source/tests/expected-outputs/{name}.cmp -qs &> /dev/null')
        self.assertEqual(res.returncode, 0)
    
    @weight(95/15)
    @number(1)
    def test_and(self):
        self.test_module('and')

    @weight(95/15)
    @number(2)
    def test_or(self):
        self.test_module('or')

    @weight(95/15)
    @number(3)
    def test_xor(self):
        self.test_module('xor')

    @weight(95/15)
    @number(4)
    def test_not(self):
        self.test_module('not')

    @weight(95/15)
    @number(5)
    def test_mux(self):
        self.test_module('mux')

    @weight(95/15)
    @number(6)
    def test_dmux(self):
        self.test_module('dmux')
    
    @weight(95/15)
    @number(7)
    def test_and16(self):
        self.test_module('and16')
    
    @weight(95/15)
    @number(8)
    def test_or16(self):
        self.test_module('or16')
    
    @weight(95/15)
    @number(9)
    def test_not16(self):
        self.test_module('not16')

    @weight(95/15)
    @number(10)
    def test_mux16(self):
        self.test_module('mux16')
    
    @weight(95/15)
    @number(11)
    def test_mux4way16(self):
        self.test_module('mux4way16')
    
    @weight(95/15)
    @number(12)
    def test_mux8way16(self):
        self.test_module('mux8way16')
    
    @weight(95/15)
    @number(13)
    def test_dmux4way(self):
        self.test_module('dmux4way')
    
    @weight(95/15)
    @number(14)
    def test_dmux8way(self):
        self.test_module('dmux8way')
    
    @weight(95/15)
    @number(14)
    def test_or8way(self):
        self.test_module('or8way')
