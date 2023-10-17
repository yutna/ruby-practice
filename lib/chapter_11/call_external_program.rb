# NOTE: run this irb for check the return
# x = system("ls")
# x = `ls`

exec "ruby #{File.expand_path(File.join(Dir.pwd, "lib", "chapter_11", "binding.rb"))}"
puts "This will never be displayed"
