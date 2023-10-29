require "net/pop"

EMAIL_POP3_SERVER = "pop.gmail.com".freeze
EMAIL_POP3_PORT = 995

EMAIL_USERNAME = "".freeze
EMAIL_PASSWORD = "".freeze

mail_server = Net::POP3.new(EMAIL_POP3_SERVER, EMAIL_POP3_PORT)
mail_server.enable_ssl(OpenSSL::SSL::VERIFY_NONE)

begin
  mail_server.start(EMAIL_USERNAME, EMAIL_PASSWORD)

  if mail_server.empty?
    puts "No mails"
  else
    puts "#{mail_server.mails.length} mails waiting"
  end
rescue Net::POPAuthenticationError
  puts "Authentication failed. Please check your username and password."
rescue => error
  puts "Mail error"
  puts "An error occurred: #{error.message}"
ensure
  mail_server.finish
end
