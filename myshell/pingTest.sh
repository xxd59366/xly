#!/bin/bash

read -p '请输入要查询的网段：' str
#str=176.19.2
#echo $str
test() {
	rm -f ~/.pinglog
	IP=$str.$i
#	echo $IP
	ping -c 2 -W 0.2 -i 0.2 $IP &> /dev/null
	if [ $? -eq 0 ];then
		echo 主机"$IP"开启 >> ~/.pinglog
	else
		echo 主机"$IP"关闭 >> ~/.pinglog
	fi
}
for i in {1..254}
do
	test &
done
sleep 5
grep 开启 ~/.pinglog
exit
