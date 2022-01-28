require 'socket'

server = TCPServer.new(2345)

socket = server.accept

loop do

  socket.puts "What is your message?"

  message = socket.gets.chomp

  puts "We received this message: #{message}"
  
  socket.puts "Your message was: #{message}"

end

socket.close