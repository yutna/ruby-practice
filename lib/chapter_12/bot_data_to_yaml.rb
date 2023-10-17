require "yaml"

bot_data = {
  presubs: [%w[dont don't], %w[youre you're], %w[love like]],
  response: {
    :default => ["I don't understand.", "What?", "Huh?"],
    :greeting => ["Hi, I'm [name]. Want to chat?"],
    :farewell => ["Good bye!"],
    "hello" => ["How's it going?", "How do you do?"],
    "i like *" => ["Why do you like *?", "Wow! I like * too!"]
  }
}

puts bot_data.to_yaml

BOT_DATA_PATH =
  File.expand_path(
    File.join(Dir.pwd, "lib", "chapter_12", ARGV.first || "bot_data.yaml")
  )

File.open(BOT_DATA_PATH, "w") { |file| file.puts bot_data.to_yaml }
