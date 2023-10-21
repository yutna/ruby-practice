require_relative "bot"

DATA_FILE_PATH = File.expand_path(File.join("lib", "chapter_12", "fred.yaml"))

fred = Bot.new(name: "Fred", data_file: DATA_FILE_PATH)
chris = Bot.new(name: "Chris", data_file: DATA_FILE_PATH)

r = fred.greeting

10.times do
  puts "#{fred.name} said: " + r
  r = chris.response_to(r)
  puts "#{chris.name} said: " + r
  r = fred.response_to(r)
end
