require "sequel"

DB = Sequel.sqlite

DB.create_table :people do
  primary_key :id
  String :first_name
  String :last_name
  Integer :age
end

people = DB[:people]
people.insert(first_name: "Fred", last_name: "Bloggs", age: 32)

puts "There are #{people.count} people in the database"

people.each { |person| puts people[:first_name] }
DB.fetch("SELECT * FROM people") { |row| puts row[:first_name] }
