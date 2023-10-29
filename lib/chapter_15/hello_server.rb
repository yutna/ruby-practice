require "gserver"

# class HelloServer < GServer
#   def serve(io)
#     io.puts("Hello!")
#   end
# end

# server = HelloServer.new(1234)
# server.start
# server.join

# class HelloServer < GServer
#   def serve(io)
#     io.puts "Says something to me:"
#     line = io.gets
#     io.puts "You said '#{line.chomp}'"
#   end
# end

# server = HelloServer.new(1234, "127.0.0.1", 4)
# server.start

# server2 = HelloServer.new(1235, "127.0.0.1", 4)
# server2.start

# sleep 10

class HelloServer < GServer
  def serve(io)
    io.puts "To stop this server, type 'shutdown'"
    self.stop if io.gets =~ /shutdown/
  end
end

server = HelloServer.new(1234)
server.start

loop { break if server.stopped? }

puts "Server has been terminated"
