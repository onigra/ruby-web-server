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
  # request
  socket.puts(request)

  # get response
  ap socket.gets
  socket.close
end
