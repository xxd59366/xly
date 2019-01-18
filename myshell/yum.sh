#!/bin/bash

rm -f /etc/yum.repos.d/*
mkdir /dvd
yuan=file:///dvd
lujing=/etc/yum.repos.d/yum.repo
mount /dev/cdrom /dvd
#echo [rhel7] > $lujing
#echo name=RHEL 7.4 >> $lujing
#echo baseurl=$yuan >> $lujing
#echo gpgcheck=0 >> $lujing
#echo enabled=1 >> $lujing

echo "[rhel7]
name=redhat 7.4
baseurl=$yuan
gpgcheck=0
enabled=1
" > $lujing
