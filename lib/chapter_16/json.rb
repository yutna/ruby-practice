require "json"

# JSON_DATA_FILE_PATH =
#   File.expand_path(File.join("lib", "chapter_16", "data.json"))

# json_data = File.read(JSON_DATA_FILE_PATH)

# obj = JSON.load(json_data)
# puts obj.class
# puts obj.keys

person = { name: "Magie Robertson", age: 37, interests: %w[Golf Bridge Food] }
puts person.to_json
