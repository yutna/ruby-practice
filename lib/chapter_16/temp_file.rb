require "tempfile"

# f = Tempfile.new("my_app")
# f.puts "Hello"
# puts f.path
# f.close

# f = Tempfile.new("my_app")
# f.puts "Hello"
# f.close
# f.open
# puts f.read
# f.close! # force closed and permanentle deleted

# f = Tempfile.new "my_app"
# f.puts "Hello"
# f.pos = 0
# f.print "Y"
# f.pos = f.size - 1
# f.print "w"
# f.flush
# f.pos = 0
# puts f.read
# f.close!

# specify custom temp file destination
# f = Tempfile.new "my_app", "/my/secret/temporary/directory"

Tempfile.open("my_app") do |f|
  f.puts "Hello"
  f.pos = 0
  f.print "Y"
  f.pos = f.size - 1
  f.print "w"
  f.flush
  f.pos = 0
  puts f.read
end
