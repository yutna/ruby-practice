# sg =
#   Fiber.new do
#     s = 0
#     loop do
#       square = s * s
#       Fiber.yield square
#       s += 1
#     end
#   end

# 10.times { puts sg.resume }

# sg =
#   Fiber.new do
#     s = 0
#     loop do
#       square = s * s
#       s += 1
#       s = Fiber.yield(square) || s
#     end
#   end

# puts sg.resume
# puts sg.resume
# puts sg.resume
# puts sg.resume
# puts sg.resume 40
# puts sg.resume
# puts sg.resume
# puts sg.resume 0
# puts sg.resume
# puts sg.resume

non_blocking =
  Fiber.new(blocking: false) do
    puts "Blocking Fiber? #{Fiber.current.blocking?}"

    # Will not block
    sleep 2
  end

3.times { puts non_blocking.resume }
