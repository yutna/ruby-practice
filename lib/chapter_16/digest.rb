# require "digest/sha2"
# puts Digest::SHA2.hexdigest("test" * 1000)

# require "digest/md5"
# puts Digest::MD5.hexdigest("test" * 1000)

# require "digest/sha2"

# STORED_PASSWORD =
#   "5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62
# a11ef721d1542d8"

# puts "Enter the password to use this program:"
# password = gets.chomp

# password_hashed = Digest::SHA2.hexdigest(password)

# if password_hashed == STORED_PASSWORD
#   puts "You've passed!"
# else
#   puts "Wrong!"
#   exit
# end

# require "digest/sha2"
# Digest::SHA2.digest("test" * 1000).each_byte { |byte| print byte, "-" }

require "base64"
require "digest/sha2"

puts Digest::SHA2.hexdigest("test")
puts Base64.encode64(Digest::SHA2.digest("test"))
