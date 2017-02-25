require "socket"

# Create a socket object
socket = TCPSocket.new "www.google.com", 80


# Sending data to a socket
socket.write("GET / HTTP/1.1\r\nHost: google.com\r\n\r\n")


# Receiving data from a socket
while line = socket.gets
  puts line
end

# Closing the connection
socket.close


