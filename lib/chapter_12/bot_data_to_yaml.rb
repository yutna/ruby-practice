require "yaml"

bot_data = {
  presubs: [%w[dont don't], %w[youre you're], %w[love like]],
  responses: {
    :default => ["I don't understand.", "What?", "Huh?"],
    :greeting => ["Hi, I'm [name]. Want to chat?"],
    :farewell => ["Good bye!"],
    "hello" => ["How's it going?", "How do you do?"],
    "i like *" => ["Why do you like *?", "Wow! I like * too!"]
  }
}

BOT_DATA_PATH =
  File.expand_path(
    File.join("lib", "chapter_12", ARGV.first || "bot_data.yaml")
  )

File.delete(BOT_DATA_PATH) if File.exist?(BOT_DATA_PATH)
File.open(BOT_DATA_PATH, "w") { |file| file.puts bot_data.to_yaml }
