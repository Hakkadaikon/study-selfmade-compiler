#!/bin/bash


function assert() {
    PROGRAM=./bin/step1
    INPUT=$1
    EXPECTED=$2

    echo ""
    echo "assert start ! input:${INPUT} expected:${EXPECTED}"

    make clean
    make

    ${PROGRAM} ${INPUT} > tmp.s
    cc -o tmp tmp.s

    ./tmp
    ACTUAL=$?

    echo "source code:"
    echo "------------------"
    cat tmp.s
    echo "------------------"
    echo "actual : ${ACTUAL}"

    if [ "${EXPECTED}" = "${ACTUAL}" ]; then
        echo "test...OK"
    else
        echo "test...NG"
    fi

    rm tmp
    rm tmp.s
}

assert 0 0
assert 42 42
