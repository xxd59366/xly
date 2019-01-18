#!/bin/bash
if  [ $# -eq 0 ];then
	echo "/root/foo.sh redhat|fedora" >&2
elif [ $1 = "redhat" ];then
       echo "fedora"
elif [ $1 = "fedora" ];then
       echo "redhat"
else
       echo "/root/foo.sh redhat|fedora" >&2
fi
