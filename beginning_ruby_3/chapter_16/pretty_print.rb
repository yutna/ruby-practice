require "pp"

# person1 = { name: "Peter", gender: :male }
# person2 = { name: "Carleton", gender: :male }

# people = [person1, person2, person1, person1, person1]

# puts people.inspect
# pp people

class TestClass
  def initialize(count)
    if defined?(@@a)
      @aa += 1
    else
      @aa = 0
    end

    @c = @aa
    @d = [a: { b: count }, c: :d] * count
  end
end

pp TestClass.new(2)
pp TestClass.new(3)
pp TestClass.new(4)
