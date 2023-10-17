require "net/http"

uri = URI("https://ruby-doc.org")

http_request = Net::HTTP.new(uri.host, uri.port)
http_request.use_ssl = true

response = http_request.get("/")
puts response.body.force_encoding("ISO-8859-1")
