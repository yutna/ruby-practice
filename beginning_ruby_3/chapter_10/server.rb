require "webrick"

# server = WEBrick::GenericServer.new(Port: 3000)
# trap("INT") { server.shutdown }

# server.start { |socket| socket.puts Time.now }

# class MyServlet < WEBrick::HTTPServlet::AbstractServlet
#   def do_GET(request, response)
#     response.status = 200
#     response.content_type = "text/plain"
#     response.body = "You are trying to load #{request.path}"
#   end
# end

# server = WEBrick::HTTPServer.new(Port: 3000)
# server.mount "/", MyServlet

# trap("INT") { server.shutdown }
# server.start

class MyNormalClass
  def self.add(a, b)
    a.to_i + b.to_i
  end

  def self.subtract(a, b)
    a.to_i - b.to_i
  end
end

class MyServlete < WEBrick::HTTPServlet::AbstractServlet
  def do_GET(request, response)
    if request.query["a"] && request.query["b"]
      a = request.query["a"]
      b = request.query["b"]

      response.status = 200
      response.content_type = "text/plain"
      result = nil

      case request.path
      when "/add"
        result = MyNormalClass.add(a, b)
      when "/subtract"
        result = MyNormalClass.subtract(a, b)
      else
        result = "No such method"
      end

      response.body = result.to_s + "\n"
    else
      response.status = 400
      response.body = "You did not provide the correct parameters"
    end
  end
end

server = WEBrick::HTTPServer.new(Port: 3000)
server.mount "/", MyServlete

trap("INT") { server.shutdown }
server.start

# http://localhost:3000/add?a=10&b=20
# http://localhost:3000/subtract?a=100&b=10
# http://localhost:3000/subtract
# http://localhost:3000/abcd?a=10&b=20
