# ipv4 adddresses have 32 bits
# some are reserved, but there are roughly 4 billion (2^32) addresses

# an ip address has a network address and host address 
# a subnet mask seperates the two components, e.g. 11111111 00000000 00000000 00000000 represents a /8 address block
# a local network is generally assigned a block of addresses in this way
# note that in a local network the bottom, top and first are usually reserved

# ip addresses belong less to hosts and more to interfaces
# e.g. a laptop may have a wireless and ethernet interface, or a VM interface

# lo is a loopback interface, localhost 127.0.0.1
# allows a computer to talk to itself, requests are redirected back 

# shows ip interfaces
ip addr show
ifconfig

# a typical router connects a lan to a wan
# generally a router is a gateway between two ip networks
# routers can have multiple ip addresses
# local networks have a default gateway, a router connected to the rest of the internet
ip route show default
netstat -nr

# ip use is not evenly distributed
# local networks are often assigned on ip address per LAN
# the router gets a real ip from an ISP
# the other local devices can private addresses (RFC 1918)
# NAT : private ip's are mapped to the router's public port

# ipv6 addresses are 128 bits long, allowing many more addresses
# written in 2-byte hex blocks, seperated by colons






