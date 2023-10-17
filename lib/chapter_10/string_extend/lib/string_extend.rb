class String
  def vowels
    scan(/[aeiou]/i)
  end
end

pp "This is a test".vowels
