#!/bin/bash
ARG=123

make clean
make

./bin/step1 ${ARG} > tmp.s
cc -o tmp tmp.s

./tmp
RET=$?

echo "source code"
echo "------------------"
cat tmp.s
echo "------------------"
echo "return: ${RET}"

rm tmp
rm tmp.s
