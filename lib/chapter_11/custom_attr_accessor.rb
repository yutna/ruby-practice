class Class
  def add_accessor(accessor_name)
    self.class_eval %{
      def #{accessor_name}
        @#{accessor_name}
      end

      def #{accessor_name}=(value)
        @#{accessor_name} = value
      end
    }
  end
end

class Person
  add_accessor :name
end

person = Person.new
person.name = "Yutthana Siphuengchai"
puts person.name
