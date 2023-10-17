require_relative "bot"

bot = Bot.new(name: "Botty", data_file: "botty.bot")

puts bot.greeting

while input = gets and input.chomp != "goodbye"
  puts ">> " + bot.response_to(input)
end

puts bot.farewell
