BINDING_FILE_PATH =
  File.expand_path(File.join(Dir.pwd, "lib", "chapter_11", "binding.rb"))

# exec "ruby #{BINDING_FILE_PATH}" if fork.nil?
# puts "This Ruby script now runs alongside #{BINDING_FILE_PATH}"

child =
  fork do
    sleep 3
    puts "Child says `hi`!"
  end

puts "Waiting for the child process..."
Process.wait child
puts "All done!"
