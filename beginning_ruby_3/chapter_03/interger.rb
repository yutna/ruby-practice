class Integer
  def seconds
    self
  end

  def minutes
    self * 60
  end

  def hours
    self * 60 * 60
  end

  def days
    self * 60 * 60 * 24
  end
end

puts Time.now
puts Time.now + 10.minutes
puts Time.now + 16.hours
puts Time.now - 7.days

year = 2020
month = 1
day = 16
hour = 12
min = 57
sec = 10
msec = 42

puts Time.local(year, month, day, hour, min, sec, msec)

start_working_day = Time.local(2023, 6, 16)
puts start_working_day + 120.days
