# threads = []

# 10.times do
#   thread =
#     Thread.new do
#       10.times do |i|
#         print i
#         $stdout.flush
#         sleep rand(2)
#       end
#     end

#   threads << thread
# end

# threads.each do |thread|
#   puts "Thread #{thread.object_id} didn't finish in 1s" unless thread.join(1)
# end

# 10.times do
#   Thread.new do
#     10.times do |i|
#       print i
#       $stdout.flush
#       sleep rand(2)
#     end
#   end
# end

# Thread.list.each { |thread| thread.join unless thread == Thread.main }

# 10.times do
#   Thread.new do
#     10.times do |i|
#       print i
#       $stdout.flush
#       Thread.stop
#     end
#   end
# end

# Thread.list.each { |thread| thread.run }

2.times do
  Thread.new do
    10.times do |i|
      print i
      $stdout.flush
      Thread.pass
    end
  end
end

Thread.list.each { |thread| thread.join unless thread == Thread.main }
