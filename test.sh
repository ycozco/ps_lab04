#!/usr/bin/bash

addrs="192.168.8.1,192.168.8.2,192.168.8.3,192.168.8.4"

IFS=',' read -r -a ip_array <<< "$addrs"

for ip in "${ip_array[@]}"
do
    echo "$ip"
done