require_relative "./useful_features"

class Person
  include UsefulFeatures
end

x = Person.new
puts x.class_name
