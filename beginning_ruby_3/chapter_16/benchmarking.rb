require "benchmark"

# puts Benchmark.measure { 10_000_000.times { rand } }

TIMES = 10_000_000

Benchmark.bm do |b|
  b.report("times") { TIMES.times { rand } }
  b.report("upto") { 1.upto(TIMES) { rand } }
  b.report("loop") do
    i = 0

    loop do
      rand
      i += 1
      break if i == TIMES
    end
  end
end
