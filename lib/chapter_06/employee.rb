class Employee
  attr_reader :name
  attr_reader :security_level
  attr_reader :email_addresses

  def intialize(name, security_level)
    @name = name
    @security_level = security_level
  end

  def access_granted?(level)
    @security_level === level
  end
end
