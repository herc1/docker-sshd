#!/bin/bash

echo STARTING!
#echo $ROOT_PASS | passwd root --stdin
echo "root:${ROOT_PASS}" | chpasswd
mkdir -m 755 /run/sshd
/usr/sbin/sshd -D
