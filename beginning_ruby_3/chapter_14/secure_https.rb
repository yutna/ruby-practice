require "net/http"

url = URI.parse("https://vercel.com/crawled-sitemap.xml")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true if url.scheme == "https"

request = Net::HTTP::Get.new(url.path)
puts http.request(request).body.force_encoding("UTF-8")
