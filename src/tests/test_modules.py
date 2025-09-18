import unittest
import subprocess

from gradescope_utils.autograder_utils.decorators import weight, number

def test_module(name):
    subprocess.run(['iverilog', '-o', f'/tmp/{name}_test.vvp', f'/autograder/source/tests/{name}_test.v', f'/autograder/submission/{name}.v'])

    ps = subprocess.Popen(['vvp', f'/tmp/{name}_test.vvp'], stdout=subprocess.PIPE)
    out = open(f'/tmp/{name}.out', 'w')
    subprocess.run(['head', '-n', '-1'], stdout=out, stdin=ps.stdout)
    ps.wait()

    return subprocess.call(['diff', f'/tmp/{name}.out', f'/autograder/source/tests/expected-outputs/{name}.cmp', '-qs'])

class BasicTest(unittest.TestCase): 
    @weight(95/15)
    @number(1)
    def test_and(self):
        self.assertEqual(test_module('and'), 0)

    @weight(95/15)
    @number(2)
    def test_or(self):
        self.assertEqual(test_module('or'), 0)

    @weight(95/15)
    @number(3)
    def test_xor(self):
        self.assertEqual(test_module('xor'), 0)

    @weight(95/15)
    @number(4)
    def test_not(self):
        self.assertEqual(test_module('not'), 0)

    @weight(95/15)
    @number(5)
    def test_mux(self):
        self.assertEqual(test_module('mux'), 0)

    @weight(95/15)
    @number(6)
    def test_dmux(self):
        self.assertEqual(test_module('dmux'), 0)
    
    @weight(95/15)
    @number(7)
    def test_and16(self):
        self.assertEqual(test_module('and16'), 0)
    
    @weight(95/15)
    @number(8)
    def test_or16(self):
        self.assertEqual(test_module('or16'), 0)
    
    @weight(95/15)
    @number(9)
    def test_not16(self):
        self.assertEqual(test_module('not16'), 0)

    @weight(95/15)
    @number(10)
    def test_mux16(self):
        self.assertEqual(test_module('mux16'), 0)
    
    @weight(95/15)
    @number(11)
    def test_mux4way16(self):
        self.assertEqual(test_module('mux4way16'), 0)
    
    @weight(95/15)
    @number(12)
    def test_mux8way16(self):
        self.assertEqual(test_module('mux8way16'), 0)
    
    @weight(95/15)
    @number(13)
    def test_dmux4way(self):
        self.assertEqual(test_module('dmux4way'), 0)
    
    @weight(95/15)
    @number(14)
    def test_dmux8way(self):
        self.assertEqual(test_module('dmux8way'), 0)
    
    @weight(95/15)
    @number(14)
    def test_or8way(self):
        self.assertEqual(test_module('or8way'), 0)
