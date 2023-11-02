require "csv"

CSV_FILE_PATH = File.join(Dir.pwd, "lib", "chapter_09", "csv.txt")

# Reading CSV
# CSV.open(CSV_FILE_PATH).each { |person| p person }

# people = CSV.parse(File.read(CSV_FILE_PATH))
# puts people[0][0]
# puts people[1][0]
# puts people[2][0]

# p CSV.read(CSV_FILE_PATH)

# Searching
# people = CSV.read(CSV_FILE_PATH)
# laura = people.find { |person| person[0] =~ /Laura/ }
# p laura

# young_people = people.find_all { |people| people[3].to_i.between?(20, 40) }
# p young_people

# Saving data back to CSV
people = CSV.read(CSV_FILE_PATH)
laura = people.find { |person| person[0] =~ /Laura/ }
laura[0] = "Lauren Smith"

CSV.open(CSV_FILE_PATH, "w") { |csv| people.each { |person| csv << person } }
