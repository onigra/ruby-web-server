require 'socket'
require "awesome_print"

host = "localhost"
port = 8001
request = "hello"

begin
  socket = TCPSocket.open(host, port)
rescue
  puts "TCPSocket.open Failed"
else
  socket.puts(request)
  ap socket.gets
  socket.close
end
