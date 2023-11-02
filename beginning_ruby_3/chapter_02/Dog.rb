class Dog
  def bark(i)
    i.times do
      puts "Woof!"
    end
  end

  def say(a, b, c)
    puts a
    puts b
    puts c
  end
end

my_dog = Dog.new
# my_dog.bark(3)
my_dog.say("Dogs", "can't", "talk!")
