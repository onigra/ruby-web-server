require 'socket'

begin
  socket = TCPSocket.open("localhost", 8001)
rescue
  puts "TCPSocket.open failed"
else
  socket.write("Hello")
  socket.close
end
