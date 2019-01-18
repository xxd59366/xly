#!/bin/bash
if [ "$1" = redhat ];then 
	echo fedora
elif [ "$1" = fedora ];then 
	echo redhat
else
	echo '/root/foo.sh redhat | fedora'  >&2
fi

