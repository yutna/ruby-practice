require "net/ftp"

ftp = Net::FTP.new("cdimage.debian.org")
ftp.passive = true
ftp.login
ftp.chdir("/debian-cd/current/amd64/iso-cd/")
ftp.getbinaryfile("MD5SUMS")
ftp.close
