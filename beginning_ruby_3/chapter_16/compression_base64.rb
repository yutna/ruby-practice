require "base64"
require "zlib"

module Base64
  def self.new_encode64(data)
    encode64(Zlib::Deflate.deflate(data))
  end

  def self.new_decode64(data)
    Zlib::Inflate.inflate(decode64(data))
  end
end

test_data = "This is a test" * 100

data = Base64.encode64(test_data)
puts "The uncompressed data is #{data.length} bytes long in Base64"

data = Base64.new_encode64(test_data)
puts "The compressed data is #{data.length} bytes long in Base64"
