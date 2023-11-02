require "chronic"

puts Chronic.parse("last tuesday 5am")
puts Chronic.parse("last tuesday 5:33")
puts Chronic.parse("last tuesday lunchtime")
puts Chronic.parse("june 29th at 1am")
puts Chronic.parse("3 years ago")
puts Chronic.parse("sep 23 2033")
puts Chronic.parse("2003-11-10 01:02")

puts Chronic.parse("51 years from now") # 2074
