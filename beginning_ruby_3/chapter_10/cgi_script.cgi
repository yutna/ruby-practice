#!/usr/bin/env ruby

# puts "Content-Type: text/html\n\n"
# puts "<html><body>This is a test</body></html>"

require "cgi"

cgi = CGI.new

# puts cgi.header
# puts "
# <html>
#   <body>
#     This is a test
#   </body>
# </html>
# "

# text = cgi["text"]

# # www.example.com/test.cgi?text=this+is+a+test
# puts cgi.headers
# puts "
#   <html>
#     <body>
#       #{text.reverse}
#     </body>
#   </html>
# "

from = cgi["from"].to_i
to = cgi["to"].to_i

number = rand(to - from + 1) + from

puts cgi.headers
puts "
  <html>
    <body>
      #{number}
    </body>
  </html>
"
