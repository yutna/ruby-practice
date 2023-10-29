require "open-uri"

URL = "http://localhost:3000/entries"
url = URI.parse("http://localhost:3000/entries")

# f = URI.open(URL)
# puts f.readlines.join

# f = URI.open(URL)
# puts "The document is #{f.size} bytes in length"
# f.each_line { |line| puts line }

# URI.open(URL) { |f| puts f.readlines.join }

# url.open { |f| puts f.read }

# f = URI.open(URL)
# puts f.content_type
# puts f.last_modified

f =
  URI.open(
    URL,
    {
      "User-Agent" =>
        "Mozilla/5.0 (platform; rv:geckoversion) Gecko/geckotrail Firefox/firefoxversion"
    }
  )

puts f.read
