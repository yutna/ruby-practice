#!/usr/bin/env ruby

# เลียนแบบ Unix copy command: cp /directory1/from_filename /directory2/destination_filename
from_filename = ARGV[0]
destination_filename = ARGV[1]

puts "cp #{from_filename} #{destination_filename}"
