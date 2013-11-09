require "socket"
require "awesome_print"

port = 8001

server = TCPServer.open(port)

while true
  # get request
  socket = server.accept

  # IPSockt#peeraddr
  # 接続相手先ソケットの情報を表す配列を返す
  # [アドレスファミリ, port番号, ホストを表す文字列, IPアドレス]
  # アドレスファミリについて
  # http://www.geekpage.jp/programming/winsock/addressfamily.php
  ap socket.peeraddr

  while buffer = socket.gets
    ap buffer

    # response
    socket.puts "200"
  end

  socket.close
end

server.close

