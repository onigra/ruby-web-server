require 'socket'
require 'awesome_print'

host = 'localhost'
port = 8001
path = '/index.html'
request = "GET #{path} HTTP/1.1\r\n\r\n"

begin
  socket = TCPSocket.open(host, port)
rescue
  puts "TCPSocket.open Failed"
else
  socket.puts(request)

  response = socket.read.split("\r\n\r\n")
  puts "Response Header"
  ap response[0].split("\r\n")

  puts "Response Body"
  puts response[1].split("\n")
end

