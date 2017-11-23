# packets are directed through routers
# each packet has a time to live (TTL)
# when the TTL is reached, the router at which it was reached sends an error message back to the client
# with this mechanism, we can determin the route taken by a packet  to an endpoint
traceroute www.google.ca

# bandwdith data / time
# bandwidth (connection) and latency (time to cover distance) determine speed
# bandwidth latency product is the amount od data that is being moved at any given time (volume of pipe)

# when congested, routers drop packets from their buffer

# firewalls generally drop packets that are not directed to a specific host-port pair

# when troubleshooting connections
# can you ping by ip
# can you access a different domain on the same server 
# can you perform a DNS query, e.g. with host
# are similar users reporting the same problem (e.g. geography)

# proxies may be used to cache requests

# to distinguish users with the same public IP address (NAT)
# logged in identity
# session cookies

