require "net/ping"

# if Net::Ping::External.new("www.google.com").ping
#   puts "Pong!"
# else
#   puts "No response"
# end

if Net::Ping::TCP.new("www.google.com", 80).ping
  puts "Pong!"
else
  puts "No response"
end
