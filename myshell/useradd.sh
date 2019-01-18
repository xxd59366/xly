#!/bin/bash

if [ $# -eq 0 ];then
	echo "Usage: /root/batchusers <userfile>" >&2
	exit 1
elif [ ! -f $1 ];then
	echo "Input file not found"  >&2
	exit 2
else
	for name in $(cat $1)
	do
	    useradd  -s  /bin/false  $name
	done
fi
