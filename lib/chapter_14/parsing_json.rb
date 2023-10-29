require "json"

json = <<END_JSON
[
  {
    "name": "Peter Cooper",
    "gender": "Male"
  },
  {
    "name": "Carleton DiLeo",
    "gender": "Male"
  }
]
END_JSON

people = JSON.parse(json, symbolize_names: true)
people.each { |person| puts "#{person[:name]} is a #{person[:gender]}" }
