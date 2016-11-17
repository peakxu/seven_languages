#!/usr/bin/env ruby
puts "Arrays can be used as queues in addition to stacks"
arr = []
(1..3).each do |x|
  puts "enqueuing #{x}"
  arr.push(x)
end

until arr.empty?
  puts "dequeuing #{arr.shift}"
end
