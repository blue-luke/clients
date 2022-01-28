require 'socket'

server = TCPServer.new(2345)

socket = server.accept

socket.puts "What is your message?"

loop do

  incoming_message = socket.gets.chomp
  
  puts "You received a message: #{incoming_message}"

  puts "Type your response"

  if incoming_message == "quit"

    socket.close

  else

    outgoing_message = gets.chomp

    socket.puts "#{outgoing_message}"

    puts "Await a response. Further messages will not be sent"

  end

end

socket.close