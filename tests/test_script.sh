#!/bin/bash

# Change directory to tests dir.
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
pushd ${SCRIPT_DIR} &> /dev/null

TESTS=(bit register pc ram8 ram64 ram512 ram4k ram16k)

for TEST in ${TESTS[@]};
do
    # Skip if file not present
    [[ ! -s ../${TEST}.v ]] && {
        echo "${TEST}.v not found"
        continue
    }
    [[ ! -s ./${TEST}_test.v ]] && {
        echo "${TEST}_test.v not found"
        continue
    }

    LIB_FILES=$(ls ../*.v | awk '{print "-l " $0}' | xargs)
    iverilog -o /tmp/${TEST}_test.vvp ${TEST}_test.v ${LIB_FILES} -l dff.v -l muxlib.v
    vvp /tmp/${TEST}_test.vvp 2> /dev/null | head -n -1 1> /tmp/${TEST}.out 2> /dev/null
    diff /tmp/${TEST}.out expected-outputs/${TEST}.cmp -qsw --strip-trailing-cr &> /dev/null && echo "${TEST^^} Test Passed" || echo "${TEST^^} Test Failed"
done

popd &> /dev/null
