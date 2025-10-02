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

        subprocess.run(['iverilog', '-o', f'/tmp/{name}_test.vvp', f'/autograder/grader/tests/{name}_test.v', f'/autograder/source/{name}.v'])

        out = open(f'/tmp/{name}.out', 'w')
        subprocess.call(['vvp', f'/tmp/{name}_test.vvp'], stdout=out)

        res = subprocess.call(['diff', f'/tmp/{name}.out', f'/autograder/grader/tests/expected-outputs/{name}.cmp', '-qs', '--strip-trailing-cr'])
        if res != 0:
            raise AssertionError('Module output does not mach the expected output!')

class TestModules(TestBase): 
    @weight(95/15)
    @number(1)
    def test_half_adder(self):
        self.assertModulePasses('half_adder')

    @weight(95/15)
    @number(2)
    def test_full_adder(self):
        self.assertModulePasses('full_adder')
