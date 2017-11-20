# sends 3 3 messages to 8.8.8.8 (a google service)
ping -c3 8.8.8.8

# pipe an http request into netcat and direct it to wikipedia port 80
printf 'HEAD / HTTP/1.1\r\nHost: en.wikipedia.org\r\n\r\n' | nc en.wikipedia.org 80

# tcp connection
nc -l 4567 # listening on port 4567

# from another terminal
nc localhost 4567 # opens tcp session, data goes both ways!
