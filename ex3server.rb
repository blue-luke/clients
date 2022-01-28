require 'socket'

server = TCPServer.new(2345)

socket = server.accept

loop do

  socket.puts "What is your message?"

  message = socket.gets.chomp
  
  socket.puts "Your message was: #{message}"

end

socket.close