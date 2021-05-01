#!/bin/bash

ip netns del RED;
ip netns del BLUE;
ip link del br0;
ip link del beth1;
ip link del reth1;

iptables -t filter -D FORWARD -s 11.11.11.0/24 -j ACCEPT
