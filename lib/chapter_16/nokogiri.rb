require "nokogiri"
require "open-uri"
require "rubygems"

url = URI.open("https://www.apress.com/")
doc = Nokogiri.HTML(url)
doc.css("p").each { |paragraph| puts paragraph.inner_text }
