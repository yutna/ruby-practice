require "strscan"

# string = StringScanner.new "This is a test"

# puts string.scan(/\w+/)
# puts string.scan(/\s+/)
# puts string.scan(/\w+/)
# puts string.scan(/\s+/)
# puts string.rest

# puts string.scan(/\w+/)
# puts string.scan(/\w+/)
# puts string.scan(/\w+/)
# puts string.scan(/\w+/)
# puts string.rest

# puts string.scan(/\w+\s*/)
# puts string.scan(/\w+\s*/)
# puts string.scan(/\w+\s*/)
# puts string.scan(/\w+\s*/)

# string = StringScanner.new "I want to live to be 100 years old!"
# puts string.scan(/\w+/)
# puts string.scan_until(/\d+/)

# string = StringScanner.new "This is a test"
# puts string.scan_until(/\w+/)
# puts string.scan_until(/\w+/)
# puts string.scan_until(/\w+/)
# puts string.scan_until(/\w+/)

# string = StringScanner.new "I want to live to be 100 years old!"
# puts string.scan(/\w+/)
# string.unscan
# puts string.pos
# puts string.scan_until(/\d+/)
# puts string.pos
# string.unscan
# puts string.scan_until(/live/)
# puts string.pos

string = StringScanner.new "I want to live to be 100 years old!"
string.pos = 12
puts string.scan_until(/\s+/)
