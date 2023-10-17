# class Person
# end

# def add_accessor_to_person(accessor_name)
#   Person.class_eval %{
#     attr_accessor :#{accessor_name}
#   }
# end

# person = Person.new
# add_accessor_to_person :name
# add_accessor_to_person :gender

# person.name = "Carlenton Dileo"
# person.gender = "male"
# puts "#{person.name} is #{person.gender}"

class Class
  def add_accessor(accessor_name)
    self.class_eval %{
      attr_accessor :#{accessor_name}
    }
  end
end

# class Person
# end

# person = Person.new
# Person.add_accessor :name
# Person.add_accessor :gender

# person.name = "Yutthana Siphuengchai"
# person.gender = "male"
# puts "#{person.name} is #{person.gender}"

class SomethingElse
  add_accessor :whatever
end

s = SomethingElse.new
s.whatever = true
p s.whatever
