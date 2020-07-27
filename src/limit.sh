#!/bin/bash

PID=`ps aux | grep redis-server | awk '{print $2}'`
taskset -pc 1 $PID
