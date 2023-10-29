# require "net/ftp"

# ftp = Net::FTP.new("ftp.domain.com")
# ftp.passive = true
# ftp.login
# ftp.chdir("/your/folder/name/here")
# ftp.putbinaryfile("local_file")
# ftp.close

require "net/ftp"

ftp = Net::FTP.new("ftp.domain.com")
ftp.passive = true
ftp.login
ftp.chdir("/your/folder/name/here")

count = 0

ftp.putbinaryfile("local_file", "local_file", 100_000) do |block|
  count += 100_000
  puts "#{count} bytes uploaded"
end

ftp.close
