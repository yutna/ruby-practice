# require "open-uri"

# output = File.new("MD5SUM.txt", "wb")

# URI.open(
#   "ftp://cdimage.debian.org/debian-cd/current/amd64/iso-cd/MD5SUMS"
# ) { |file| output.print file.read }

# output.close

# require "net/ftp"
# require "uri"

# uri = URI.parse("ftp://cdimage.debian.org/debian-cd/current")

# Net::FTP.open(uri.host) do |ftp|
#   ftp.login "anonymous", "me@privacy.net"
#   ftp.passive = true
#   ftp.list(uri.path) { |path| puts path }
# end

require "net/ftp"

ftp = Net::FTP.new("cdimage.debian.org")
ftp.passive = true
ftp.login
ftp.list("*") { |file| puts file }
ftp.close
