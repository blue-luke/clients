# Overview

A series of short exercises related to servers and clients

## Instructions

To run a simple tcp messaging app:
- Run ex3server.rb in the command line: ruby ex3server.rb
- Run ex3client.rb in a new terminal in the command line: ruby ex3client.rb
- Then, send and receive messages between the two terminals

## Notes
- ex3client.rb can also be run from another computer on the local network, in which case change line 3 from 'socket = TCPSocket.new('localhost', 2345)' to 'socket = TCPSocket.new('[network ip]', 2345)'. Eg 'socket = TCPSocket.new('192.154.3.43', 2345)'
- Once you have pressed return, further messages will not be sent. You must wait for a response before sending further messages
