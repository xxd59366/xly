#!/bin/bash

str='id: '$1': no such user'
id $1 2> /root/userlist
if [ "$(cat /root/userlist)" == "$str" ];then
	useradd $1
	echo "$1"创建成功
fi
