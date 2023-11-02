require "webrick"
require_relative "bot"

class BotServlet < WEBrick::HTTPServlet::AbstractServlet
  @@html =
    %q{
    <!DOCTYPE html>
    <html>
      <head>
        <meta charset="utf-8">
        <title>Bot</title>
      </head>
      <body>
        <form method="GET">
          <h1>Talk To A Bot</h1>
          %RESPONSE%
          <p>
            <b>You say:</b>
            <input type="text" name="line" size="40">
            <input type="submit">
          </p>
        </form>
      </body>
    </html>
  }

  def do_GET(request, response)
    response.status = 200
    response.content_type = "text/html"

    if request.query["line"] && request.query["line"].length > 1
      bot_text = $bot.response_to(request.query["line"].chomp)
    else
      bot_text = $bot.greeting
    end

    bot_text = %Q{<p><b>I say:</b> #{bot_text}</p>}
    response.body = @@html.sub(/\%RESPONSE\%/, bot_text)
  end
end

DATA_FILE_PATH = File.expand_path(File.join("lib", "chapter_12", "fred.yaml"))
$bot = Bot.new(name: "Fred", data_file: DATA_FILE_PATH)

server = WEBrick::HTTPServer.new(Port: 1234)
server.mount "/", BotServlet

trap("INT") { server.shutdown }
server.start
