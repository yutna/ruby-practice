# a = "This is a test"

# puts a.methods.join(" ")
# puts a.methods.length
# puts a.public_methods.length
# puts a.private_methods.length
# puts a.protected_methods.length

class Person
  attr_accessor :name, :age
end

p = Person.new
p.name = "Fred"
p.age = 20
puts p.instance_variables
