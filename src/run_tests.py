import unittest

from gradescope_utils.autograder_utils.json_test_runner import JSONTestRunner

if __name__ == '__main__':
    suite = unittest.defaultTestLoader.discover(start_dir='tests', pattern='test*.py')

    with open('/autograder/results/results.json', 'w') as f:
        JSONTestRunner(stream=f, verbosity=2, buffer=True).run(suite)
