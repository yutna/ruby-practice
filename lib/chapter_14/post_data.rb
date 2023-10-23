require "net/http"

url = URI.parse("http://localhost:3000/entries.json")

payload = {}

# response = Net::HTTP.post_form(url, payload)
# puts response.body

Net::HTTP.start(url.host, url.port) do |http|
  req = Net::HTTP::Post.new(url.path)
  req.set_form_data(payload)

  puts http.request(req).body
end

# NOTE: not working and I did't know why
