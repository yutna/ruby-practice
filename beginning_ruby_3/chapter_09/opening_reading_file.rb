CURRENT_DIR = Dir.pwd + "/lib/chapter_09"
TEXT_FILE_PATH = CURRENT_DIR + "/read_text.txt"

# File.open(TEXT_FILE_PATH).each { |line| puts line }
# File.new(TEXT_FILE_PATH, "r").each { |line| puts line }

# File.open(TEXT_FILE_PATH) { |file| puts file.gets }
# file = File.new(TEXT_FILE_PATH)
# puts file.gets
# file.close

# class MyFile
#   attr_reader :handle

#   def initialize(filename)
#     @handle = File.new(filename, "r")
#   end

#   def finished
#     @handle.close
#   end
# end

# file = MyFile.new(TEXT_FILE_PATH)
# puts file.handle.gets
# file.finished

# File.open(TEXT_FILE_PATH).each(",") { |line| puts line }
# File.open(TEXT_FILE_PATH).each_byte { |byte| puts byte }
# File.open(TEXT_FILE_PATH).each_char { |byte| puts byte }
# File.open(TEXT_FILE_PATH) { |file| 2.times { puts file.gets(",") } }
# File.open(TEXT_FILE_PATH) { |file| 2.times { puts file.getc } }
# puts File.open(TEXT_FILE_PATH).readlines.join("--")
# File.open(TEXT_FILE_PATH) { |file| puts file.read(6) }
# puts File.open(TEXT_FILE_PATH).read(6)

# data = File.read(TEXT_FILE_PATH)
# p data

# array_of_lines = File.readlines(TEXT_FILE_PATH)
# p array_of_lines

# file = File.open(TEXT_FILE_PATH)
# file.pos = 8
# puts file.gets
# puts file.pos
