import socket

# Store the mappings in a dictionary
mappings = {}

# Load the mappings from a file
with open("mappings.txt") as f:
    for line in f:
        domain, ip = line.strip().split()
        mappings[domain] = ip

# Create a socket and bind it to a specific port
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
s.bind(("", 53))

# Start the server loop
while True:
    data, address = s.recvfrom(512)

    # Extract the domain name from the request
    domain = data[12:].decode().strip()

    # Look up the IP address in the mappings
    ip = mappings.get(domain)

    # Send the IP address back to the client
    if ip:
        s.sendto(b"\xC0\x0C" + socket.inet_aton(ip), address)
    else:
        s.sendto(b"", address)
