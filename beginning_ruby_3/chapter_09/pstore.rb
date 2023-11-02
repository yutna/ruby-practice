require "pstore"

STORAGE_FILE_PATH =
  File.expand_path(File.join("lib", "chapter_09", "storagefile"))

class Person
  attr_accessor :name, :job, :gender, :age
end

File.delete(STORAGE_FILE_PATH) if File.exist?(STORAGE_FILE_PATH)

fred = Person.new
fred.name = "Fred Bloggs"
fred.age = 45

laura = Person.new
laura.name = "Laura Smith"
laura.age = 23

# Save objects
store = PStore.new(STORAGE_FILE_PATH)
store.transaction do
  store[:people] ||= Array.new
  store[:people] << fred
  store[:people] << laura
end

# Read objects
people = []
store.transaction { people = store[:people] }
people.each { |person| puts person.name }
