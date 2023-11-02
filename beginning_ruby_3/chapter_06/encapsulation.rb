# class Person
#   def initialize(name)
#     set_name(name)
#   end

#   def name
#     @first_name + " " + @last_name
#   end

#   private

#   def set_name(name)
#     first_name, last_name = name.split(/\s+/)
#     set_first_name(first_name)
#     set_last_name(last_name)
#   end

#   def set_first_name(name)
#     @first_name = name
#   end

#   def set_last_name(name)
#     @last_name = name
#   end
# end

# p = Person.new("Fred Bloggs")
# puts p.name

class Person
  def initialize(age)
    @age = age
  end

  def age_difference_with(other_person)
    (self.age - other_person.age).abs
  end

  protected

  def age
    @age
  end
end

fred = Person.new(34)
chris = Person.new(25)

puts chris.age_difference_with(fred)
puts chris.age
