require "benchmark"

# puts Benchmark.measure { 1000.times { print "." } }

# iterations = 1_000_000

# b =
#   Benchmark.measure do
#     for i in 1..iterations
#       x = i
#     end
#   end

# c = Benchmark.measure { iterations.times { |i| x = i } }

# puts b
# puts c

Benchmark.bmbm do |bmbm|
  bmbm.report("for:") do
    for i in 1..iterations
      x = i
    end
  end

  bmbm.report("times:") { iterations.times { |i| x = i } }
end
