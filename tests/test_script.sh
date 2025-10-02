#!/bin/bash

# Change directory to tests dir.
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
pushd ${SCRIPT_DIR} &> /dev/null

TESTS=("half_adder")

for TEST in ${TESTS[@]};
do
    # Skip if file not present
    [[ ! -s ../${TEST}.v ]] && {
        echo "${TEST}.v not found"
        continue
    }

    iverilog -o /tmp/${TEST}_test.vvp ${TEST}_test.v ../${TEST}.v
    vvp /tmp/${TEST}_test.vvp 2> /dev/null | head -n -1 1> /tmp/${TEST}.out 2> /dev/null
    diff /tmp/${TEST}.out expected-outputs/${TEST}.cmp -qs &> /dev/null && echo "${TEST^^} Test Passed"
done

popd &> /dev/null
