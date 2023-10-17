class String
  def sentences
    gsub(/\n|\r/, " ").split(/\.\s*/)
  end

  def words
    scan(/\w[\w\'\-]*/)
  end
end

class WordPlay
  class << self
    def best_sentence(sentences, desired_words)
      ranked_sentences =
        sentences.sort_by do |s|
          s.words.length - (s.downcase.words - desired_words).length
        end

      ranked_sentences.last
    end

    def switch_pronouns(text)
      text
        .gsub(/\b(I am|You are|I|You|Me|Your|My)\b/i) do |pronoun|
          case pronoun.downcase
          when "i"
            "you"
          when "you"
            "me"
          when "me"
            "you"
          when "i am"
            "you are"
          when "you are"
            "i am"
          when "your"
            "my"
          when "my"
            "your"
          end
        end
        .sub(/^me\b/i, "i")
    end
  end
end

# hot_words = %w[test ruby great]
# my_string = "This is a test. Dull sentence here. Ruby is great. So is cake."

# puts WordPlay.best_sentence(my_string.sentences, hot_words)

# p WordPlay.switch_pronouns("Your cat is fighting with my cat")
# p WordPlay.switch_pronouns("My cat is fighting with you")
# p WordPlay.switch_pronouns("You are my robot")
# p WordPlay.switch_pronouns("I gave you hope")
# p WordPlay.switch_pronouns("You gave me hope")
# p WordPlay.switch_pronouns("I gave you life")

# while input = gets
#   puts ">> " + WordPlay.switch_pronouns(input).chomp + "?"
# end
