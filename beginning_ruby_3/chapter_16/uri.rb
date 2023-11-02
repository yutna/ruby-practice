require "uri"

# puts URI.extract(
#        "check out https://www.apress.com/ or email mailto:me@apress.com"
#      )

# puts URI.extract(
#        "https://www.apress.com/ and mailto:me@apress.com",
#        ["https"]
#      ).inspect

# email =
#   "Some cool Ruby sites are https://www.ruby-lang.org/ and https://www.apress.com/ and https://www.w3.org/"

# URI.extract(email, %w[http https]) do |url|
#   puts "Fetching URK #{url}"
#   # ...
# end

# url = URI.parse("https://www.apress.com/")
# puts url.scheme
# puts url.host
# puts url.port
# puts url.path
# puts url.query

# url = URI.parse("https://www.x.com:1234/test/1.html?x=y&y=z#top")
# puts url.port
# puts url.path
# puts url.query
# puts url.fragment

# NOTE
# URI("https://www.apress.com/") == URI.parse("https://www.apress.com/")

# url = URI("https://www.x.com:1234/test/1.html?x=y&y=z#top")
# puts url.port
# puts url.path
# puts url.query
# puts url.fragment

# p URI.split("https://www.x.com:1234/test/1.html?x=y&y=z#top")

# u = URI::HTTP.build(host: "apress.com", path: "/")
# p u.to_s
# p u.request_uri

# ftp_url =
#   URI::FTP.build(
#     userinfo: "username:password",
#     host: "ftp.example.com",
#     path: "pub/folder",
#     typecode: "a"
#   )

# p ftp_url.to_s

my_url = "http://www.test.com/something/test.html"
url = URI.parse(my_url)
url.host = "www.test2.com"
url.port = 1234
puts url.to_s
