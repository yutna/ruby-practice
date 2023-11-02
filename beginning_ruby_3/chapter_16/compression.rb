require "zlib"

# text = "This is a test string" * 100
# puts "Original string #{text.length} bytes long"
# compressed_text = Zlib::Deflate.deflate(text)
# puts "Compressed data is #{compressed_text.length} bytes long"
# uncompressed_text = Zlib::Inflate.inflate(compressed_text)
# puts "Uncompressed data back to #{uncompressed_text.length} bytes in length"

COMPRESSED_FILE_PATH =
  File.expand_path(File.join("lib", "chapter_16", "my_compressed_file.gz"))

Zlib::GzipWriter.open(COMPRESSED_FILE_PATH) do |gz|
  gz.write "This data will be compressed automatically"
end

Zlib::GzipReader.open(COMPRESSED_FILE_PATH) { |file| puts file.read }
