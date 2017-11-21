# Networks are made of layers, each later depending on abstractions provided by the layer below.

# HTTP (application layer) : concepts (resources, URLs, verbs, cookies), implementation (Flask. Apache, browsers), failures(error codes, slow responses)
# TCP (transport layer) : concepts (ports, sessions, stream sockets), implementation (OS kernel, system libraries), failures (broken connections, timeouts)
# IP (internet layer) : concepts (IP addresses, packets), implementation (OS kernel, routers), failures (various)
# Hardware : concepts (access points, WPA passwords), implementation (device drivers, hardware). network unavailable

# SSH is also in the application layer (under HTTP), NTP and DNS use UDP

# tcp dump can monitor network traffic (on any layer)
sudo tcpdump -n host 8.8.8.8

# monitor dns lookups (DNS uses port 53)
sudo tcpdump -n port 53

#monitor packets between your computer and www.google.ca
sudo tcpdump -n host www.google.ca

# notice that captures packets may have 0 bytes (payload) length
# this is because client and server neet to communicate before even sending data

# sequence diagrams represent network connections

# one exchange at the http level may wrap many exchanges on a lower level
# What TCP does and how it does it
# communicate between two hosts -> IP layer (addresses + routing)
# multiple applicatinos per host -> port numbers
# in order delivery -> sequence numbers (identifies packet order)

# acknowledgement for each packet receipt identified by sequence number (request and response)
# packets are sometimes delievered out of order, or packets are dropped
# os uses a buffer to re-arrange packets based on sequence number

# tcp flags
# SYN - [S] synchronize, opens a new TCP conecction and contains a new initial sequence number
# FIN - [F] finish, closes a TCP session, indicates the sender has finished sending, but can still receive data from the other endpoint
# PSH - [P] pushes a chunk of application data, such as an HTTP request
# RST - [R] reset, this is an error message packet, the sender has a problem and wants to abandon the session
# ACK - [.] acknowledge, this acknowledgees that the sender has received data from the other endpoint
# URG - [U]data that needs to be delivered out fo order (not frequently used)

# three way handshake
# four way teardown

# all tcp packets except the initial S will have an ACK
# ICMP and UDP don't use TCP flags as thy do not require verification of receipt

# 
