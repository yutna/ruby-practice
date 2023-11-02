stop_words = %w[
  the
  a
  by
  on
  for
  of
  are
  with
  just
  but
  and
  to
  the
  my
  I
  has
  some
  in
]

text = "Los Angeles has some of the nicest weather in the country."

words = text.scan(/\w+/)
keywords = words.select { |word| !stop_words.include?(word) }
percentage = ((keywords.length.to_f / words.length.to_f) * 100).to_i

puts keywords.join(" ")
puts percentage
