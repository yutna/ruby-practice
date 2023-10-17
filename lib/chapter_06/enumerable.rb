# [1, 2, 3, 4, 5].each { |number| puts number }

# my_array = %w[this is a test of the longest word check]
# longest_word = ""

# my_array.each do |word|
#   longest_word = word if longest_word.length < word.length
# end

# puts longest_word

# my_array = %w[10 56 92 3 49 588 18]
# highest_number = 0

# my_array.each do |number|
#   number = number.to_i
#   highest_number = number if number > highest_number
# end

# puts highest_number

# collect, detect, find, find_all, include?, max, min, select, sort, to_a

# p [1, 2, 3, 4].collect { |i| i.to_s + "x" }
# p [1, 2, 3, 4].detect { |i| i.between?(2, 3) }
# p [1, 2, 3, 4].select { |i| i.between?(2, 3) }
# p [4, 1, 3, 2].sort
# p [1, 2, 3, 4].max
# p [1, 2, 3, 4].min

# class AllVowels
#   VOWELS = %w[a e i o u]

#   def each
#     VOWELS.each { |v| yield v }
#   end
# end

# x = AllVowels.new
# x.each { |v| puts v }

class AllVowels
  include Enumerable

  VOWELS = %w[a e i o u]

  def each
    VOWELS.each { |v| yield v }
  end
end

x = AllVowels.new
p x.collect { |i| i + "x" }
p x.detect { |i| i > "j" }
p x.select { |i| i > "j" }
p x.sort
p x.max
p x.min
