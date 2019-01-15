#!/bin/bash

read -p '请输入要查询的网段：' str
#echo $str
test() {
	rm -f /root/.pinglog
	IP=$str.$i
#	echo $IP
	ping -c 2 -W 0.2 -i 0.2 $IP &> /dev/null
	if [ $? -eq 0 ];then
		echo 主机"$IP"开启 >> /root/.pinglog
	else
		echo 主机"$IP"关闭 >> /root/.pinglog
	fi
}
for i in {1..254}
do
	test &
done
sleep 5
grep 开启 /root/.pinglog
exit 
