CURRENT_DIR = Dir.pwd + "/lib/chapter_09"
TEXT_FILE_PATH = CURRENT_DIR + "/write_text.txt"

# File.open(TEXT_FILE_PATH, "w") { |file| file.puts "This is a test" }
# file = File.new(TEXT_FILE_PATH, "a")
# file.puts Time.now
# file.close

# file = File.open(TEXT_FILE_PATH, "r+")
# puts file.gets
# file.puts "This is a test"
# puts file.gets
# file.close

# file = File.open(TEXT_FILE_PATH, "r+")
# file.putc "X"
# file.close

# file = File.open(TEXT_FILE_PATH, "r+")
# file.write "123456"
# file.close

# p File.open(TEXT_FILE_PATH, "r:iso-8859-1").external_encoding
# p File.open(TEXT_FILE_PATH, "r").external_encoding

# File.open(TEXT_FILE_PATH, "r:utf-8:iso-8859-1") do |file|
#   p file.external_encoding
#   first_line = file.gets
#   p first_line
#   p first_line.encoding
# end
