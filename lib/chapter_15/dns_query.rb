require "resolv"

# puts Resolv.getaddress("https://www.yutna.xyz")

# ip = "142.250.199.36"

# begin
#   puts Resolv.getname(ip)
# rescue StandardError
#   puts "No hostname associated with #{ip}"
# end

Resolv::DNS.open do |dns|
  mail_servers = dns.getresources("google.com", Resolv::DNS::Resource::IN::MX)
  mail_servers.each do |server|
    puts "#{server.exchange.to_s} - #{server.preference}"
  end
end
