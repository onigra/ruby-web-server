require "socket"
require "awesome_print"

port = 8001
server = TCPServer.open(port)

while true
  Thread.start(server.accept) do |socket|
    ap socket.peeraddr

    while buffer = socket.gets
      ap buffer
      socket.puts "200"
    end

    socket.close
  end
end

server.close

