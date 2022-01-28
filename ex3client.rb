require 'socket'

socket = TCPSocket.new('localhost', 2345)

loop do

  incoming_message = socket.gets
  
  puts "#{incoming_message}"

  puts "Type your response"

  if incoming_message == "quit"

    socket.close

  else

    outgoing_message = gets.chomp

    socket.puts "#{outgoing_message}"
    
    puts "Await a response"

  end

end

socket.close