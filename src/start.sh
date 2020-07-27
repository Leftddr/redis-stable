#!/bin/bash

rm -rf /tmp/rocksdb_simple_example
rm -rf /tmp/rocksdb_simple_example_backup

if [ -f appendonly.aof ]; then
	echo "delete appendonly.aof"
	rm -rf appendonly.aof
fi

./redis-server ../redis.conf
