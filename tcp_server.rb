require "socket"


#Creates a TCP Server on port 9999
server = TCPServer.new(9999)


#Listens for Connections and sends "Hello World! to them
loop do
  Thread.start(server.accept) do |client|
    client.puts "Hello World!"
    client.close
  end
end

