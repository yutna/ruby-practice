require "erb"

# BASIC_TEMPLATE_FILE_PATH =
#   File.expand_path(File.join("lib", "chapter_16", "basic.html.erb"))

# template = File.read(BASIC_TEMPLATE_FILE_PATH)
# puts ERB.new(template).result
# Print the result to the screen without utilizing the `puts` method.
# ERB.new(template).run

# ERB can access variables in the current scope (array_of_stuff)
array_of_stuff = %w[this is a test]
file =
  File.expand_path(
    File.join("lib", "chapter_16", "accessing_outside_variables.html.erb")
  )

ERB.new(File.read(file)).run
