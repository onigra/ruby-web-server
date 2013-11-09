require 'socket'
require "awesome_print"

host = "localhost"
port = 8001
request = "GET HTTP/1.1\r\n\r\n"

begin
  socket = TCPSocket.open(host, port)
rescue
  puts "TCPSocket.open Failed"
else
  socket.puts(request)
  ap socket.read
  socket.close
end
