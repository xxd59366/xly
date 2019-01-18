#!/bin/bash

if [ $# -eq 0 ];then
	echo 请输入参数 >&2
	exit 2
else
	id $1 2> /dev/null
	if [ $? -ne 0 ];then
		useradd $1 &> /dev/null
		echo 用户"$1"创建成功
	fi
fi
