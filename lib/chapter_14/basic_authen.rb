require "net/http"

# url = URI.parse("https://browserspy.dk/password-ok.php")
url = URI.parse("http://localhost:3000/entries")

Net::HTTP.start(url.host, url.port) do |http|
  req = Net::HTTP::Get.new(url.path)
  req.basic_auth("test", "test")
  puts http.request(req).body
end
