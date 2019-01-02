#!/usr/bin/bash

#run.sh
nohup xxxx > xxxx.`date +%Y-%m-%d-%H-%M-%S`.log 2>&1 &

#stop.sh
kill -9 `ps -ef | grep ai-debug-tools | grep -v grep | grep spring.profiles.active=cc | awk '{print $2}'`

#status.sh
ps -ef | grep ai-debug-tools | grep -v grep | grep --color=always spring.profiles.active=cc
