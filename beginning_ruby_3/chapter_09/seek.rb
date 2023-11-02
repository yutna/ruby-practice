TEXT_FILE_PATH = File.expand_path(File.join("lib", "chapter_09", "seek.txt"))

# file = File.open(TEXT_FILE_PATH, "r+")
# file.write "1234567890"
# file.seek(-5, IO::SEEK_END)
# file.putc "X"
# file.close

# File.open(TEXT_FILE_PATH, "r") do |file|
#   while ch = file.getc
#     puts ch.chr
#     file.seek(5, IO::SEEK_CUR)
#   end
# end

# time = File.mtime(TEXT_FILE_PATH)
# puts time
# puts time.hour
# puts time.min
# puts time.sec

# puts "It exists!" if File.exist?("comic-book.txt")

# class MyFile
#   attr_reader :handle

#   def initialize(filename)
#     if File.exist?(filename)
#       @handle = File.new(filename, "r")
#     else
#       false
#     end
#   end
# end

# File.size should check with File.exist? to prevent raise exception error
# puts File.size(TEXT_FILE_PATH) if File.exist?(TEXT_FILE_PATH)

# Check the end of the file with eof? method
File.open(TEXT_FILE_PATH, "r") { |file| puts file.gets while !file.eof? }
