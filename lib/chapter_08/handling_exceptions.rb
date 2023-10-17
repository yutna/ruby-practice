# begin
#   puts 10 / 0
# rescue ZeroDivisionError
#   puts "You caused an error!"
# end

begin
  puts 10 / 0
rescue => e
  puts "You caused the error -> #{e.class}"
end
