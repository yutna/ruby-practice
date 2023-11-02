class Square
  def self.test_method
    puts "Hello from the Square class!"
  end

  def test_method
    puts "Hello from an instance of class Squre!"
  end
end

Square.test_method
Square.new.test_method
