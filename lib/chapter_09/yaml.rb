require "yaml"

class Person
  attr_accessor :name, :age
end

fred = Person.new
fred.name = "Fred Bloggs"
fred.age = 45

laura = Person.new
laura.name = "Laura Smith"
laura.age = 23

people = [fred, laura]
# puts people.to_yaml

yaml_string = <<YAML_DATA
---
- !ruby/object:Person
  name: Fred Bloggs
  age: 45
- !ruby/object:Person
  name: Laura Smith
  age: 23
YAML_DATA

read_yaml_data = YAML.load(yaml_string)
puts read_yaml_data[0].name
puts read_yaml_data[1].name
