= Autograder

- Python or Java to write autograder
  - Python `gradescope-utils` library
- Can directly interact with bindings or use a subprocess and use diff-style output
  - Example: https://gradescope-autograders.readthedocs.io/en/latest/diff_general/
- `run_autograder` script handles setup (compiling, moving files, &c.)
- Security best practices
  - Run as non-root https://gradescope-autograders.readthedocs.io/en/latest/best_practices/#run-your-autograder-as-a-non-root-user
  - Isolate student code execution https://gradescope-autograders.readthedocs.io/en/latest/best_practices/#isolate-student-code-execution
  - Restrict imports & functions https://gradescope-autograders.readthedocs.io/en/latest/best_practices/#restrict-imports-and-functions
  - Restrict OS-Level features https://gradescope-autograders.readthedocs.io/en/latest/best_practices/#restrict-os-level-features
- You can use a docker container
  - Base image: `gradescope/autograder-base`
  - `run_autograder` script at `/autograder/run_autograder`
  - Results should be in `/autograder/results/results.json`
    - Format: https://gradescope-autograders.readthedocs.io/en/latest/specs/#output-format
