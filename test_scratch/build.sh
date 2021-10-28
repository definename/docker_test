#! /bin/sh

binname=it_works
srcname=./main.c

gcc -o ${binname} -static ${srcname}
echo $?
docker build -t tst .
echo $?
docker run --rm -it tst
echo $?
docker image rm tst
echo $?
rm ./${binname}
echo $?