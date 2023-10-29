require "net/http"

url = URI.parse("https://vercel.com/crawled-sitemap.xml")

# Net::HTTP.start(url.host, url.port, use_ssl: true) do |http|
#   req = Net::HTTP::Get.new(url.path)
#   body = http.request(req).body
#   puts body.force_encoding("UTF-8")
# end

response = Net::HTTP.get_response(url)
puts response.body.force_encoding("UTF-8")
