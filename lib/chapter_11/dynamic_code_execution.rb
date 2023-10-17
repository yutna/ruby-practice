# eval "puts 2 + 2"
# puts eval("2 + 2")

my_number = 15
my_code = %{#{my_number} * 2}
puts eval(my_code)
