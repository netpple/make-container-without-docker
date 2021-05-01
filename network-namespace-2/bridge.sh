#!/bin/bash

ip netns add RED;
ip link add reth0 netns RED type veth peer name reth1

ip netns add BLUE;
ip link add beth0 netns BLUE type veth peer name beth1

ip link add br0 type bridge
ip link set reth1 master br0
ip link set beth1 master br0

ip netns exec RED ip addr add 11.11.11.2/24 dev reth0
ip netns exec BLUE ip addr add 11.11.11.3/24 dev beth0

ip netns exec RED ip link set reth0 up;
ip link set reth1 up;
ip netns exec BLUE ip link set beth0 up;
ip link set beth1 up;
ip link set br0 up;

iptables -t filter -A FORWARD -s 11.11.11.0/24 -j ACCEPT
