require "socket"

server = TCPServer.open(8001)

while true
  socket = server.accept

  while buffer = socket.gets
    puts buffer
  end

  socket.close
end

s.close

