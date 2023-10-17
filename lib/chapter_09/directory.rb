# Change directory
# Dir.chdir("/usr/bin")

# Current directory
# puts Dir.pwd

# current = Dir.pwd
# Dir.chdir("/usr/bin")
# puts Dir.pwd
# Dir.chdir(current)
# puts Dir.pwd

# Get list of files and directories within a specific directory.
# puts Dir.entries(Dir.pwd).join(" ")
# Dir.foreach(Dir.pwd) { |entry| puts entry }
# Dir["#{Dir.pwd}/**/*"].each { |entry| puts entry }

# Create and delete directory
# Dir.mkdir("mynewdir")
# sleep 3
# Dir.delete("mynewdir") # exactly the same: Dir.unlink, Dir.rmdir

# If directory is not empty and you need to delete
# require "fileutils"
# DIR_PATH = File.join(Dir.pwd, "mynewdir")
# FileUtils.rm_rf(DIR_PATH, verbose: true)

# Temporary Directory
# require "tmpdir"
# puts Dir.tmpdir

# require "tmpdir"
# temp_filename = File.join(Dir.tmpdir, "myapp.dat")
# temp_file = File.new(temp_filename, "w")
# temp_file.puts "This is only temporary"
# temp_file.close
# File.delete(temp_filename)

# Ruby standard lib, create temp file for easily
# It automatically deletes the files it creates after they have been used
require "tempfile"
file = Tempfile.new("myapp")
file.puts "Hello"
puts file.path
file.close
