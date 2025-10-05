import re
import unittest
import subprocess
from os import path

from gradescope_utils.autograder_utils.decorators import weight, number

class TestBase(unittest.TestCase): 
    def assertFileContains(self, file, pattern):
        with open(file, 'r') as f:
            if not re.search(pattern=pattern, string=f.read()):
                raise AssertionError(f'Pattern {pattern} not found in {file}!')

    def assertFileNotContain(self, file, pattern):
        with open(file, 'r') as f:
            if re.search(pattern=pattern, string=f.read()):
                raise AssertionError(f'Pattern {pattern} not allowed in {file}!')

    def assertModulePasses(self, name):
        if not path.isfile(f'/autograder/source/{name}.v'):
            raise AssertionError(f'{name}.v not found!')
        self.assertFileContains(f'/autograder/source/{name}.v', f'module student_{name}')

        subprocess.run(['iverilog', '-o', f'/tmp/{name}_test.vvp', f'/autograder/grader/tests/{name}_test.v', f'/autograder/source/{name}.v', f'/autograder/grader/tests/dff.v'])

        ps = subprocess.Popen(['vvp', f'/tmp/{name}_test.vvp'], stdout=subprocess.PIPE)
        out = open(f'/tmp/{name}.out', 'w')
        subprocess.run(['head', '-n', '-1'], stdin=ps.stdout, stdout=out)
        ps.wait()

        res = subprocess.call(['diff', f'/tmp/{name}.out', f'/autograder/grader/tests/expected-outputs/{name}.cmp', '-qsw', '--strip-trailing-cr'])
        if res != 0:
            raise AssertionError('Module output does not mach the expected output!')

class TestModules(TestBase): 
    @weight(95/8)
    @number(1)
    def test_bit(self):
        self.assertModulePasses('bit')

    @weight(95/8)
    @number(2)
    def test_register(self):
        self.assertModulePasses('register')

    @weight(95/8)
    @number(3)
    def test_ram8(self):
        self.assertModulePasses('ram8')

    @weight(95/8)
    @number(4)
    def test_ram64(self):
        self.assertModulePasses('ram64')

    @weight(95/8)
    @number(5)
    def test_ram512(self):
        self.assertModulePasses('ram512')

    @weight(95/8)
    @number(6)
    def test_ram4k(self):
        self.assertModulePasses('ram4k')

    @weight(95/8)
    @number(7)
    def test_ram16k(self):
        self.assertModulePasses('ram16k')

    @weight(95/8)
    @number(8)
    def test_pc(self):
        self.assertModulePasses('pc')
