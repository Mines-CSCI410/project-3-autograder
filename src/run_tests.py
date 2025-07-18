import unittest
import subprocess

from gradescope_utils.autograder_utils.decorators import weight, number
from gradescope_utils.autograder_utils.json_test_runner import JSONTestRunner

suite = unittest.defaultTestLoader.discover('tests')
with open('results.json', 'w') as f:
    JSONTestRunner(stream=f, verbosity=2, buffer=True).run(suite)
