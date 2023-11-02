require "nokogiri"
require "open-uri"

file = URI.open("https://www.apress.com/us/about")
doc = Nokogiri.HTML(file)
puts doc.css("h1").first.inner_html

list = doc.css("ul").first
list.css("li").each { |item| puts item.inner_html }

list = doc.at("ul")
highlighted_item = list.at(".search-M")
puts highlighted_item.inner_html
