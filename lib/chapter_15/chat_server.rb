require "gserver"

class ChatServer < GServer
  def initialize(*args)
    super(*args)

    @client_id = 0
    @chat = []
  end

  def serve(io)
    @client_id += 1

    my_client_id = @client_id
    my_position = @chat.size

    io.puts "Welcome to the chat, client #{@client_id}!"

    @chat << [my_client_id, "<joins the chat>"]

    loop do
      if IO.select([io], nil, nil, 2)
        line = io.gets

        if line =~ /quit/
          @chat << [my_client_id, "<leave the chat>"]
          break
        end

        self.stop if line =~ /shutdown/
        @chat << [my_client_id, line]
      else
        @chat[my_position..(@chat.size - 1)].each_with_index do |line, index|
          io.puts "#{line[0]} says: #{line[1]}"
        end
      end
    end
  end
end

server = ChatServer.new(1234)
server.start

loop { break if server.stopped? }
