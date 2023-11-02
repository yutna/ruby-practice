require "net/smtp"

message = <<MESSAGE_END
From: Private Person <me@privacy.net>
To: Authors of Beginning Ruby <test@rubyinside.com>
Subject: SMTP email test

This is a test email message.
MESSAGE_END

Net::SMTP.start("localhost", 25) do |smtp|
  smtp.send_message message, "me@privacy.net", "test@rubyinside.com"
end
