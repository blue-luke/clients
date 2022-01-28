require 'socket'

socket = TCPSocket.new('localhost', 2345)

loop do

  puts socket.gets

  message = gets.chomp

  socket.puts "#{message}"

  if message == "quit"

    socket.close

  else
  
    puts socket.gets

  end

end

socket.close