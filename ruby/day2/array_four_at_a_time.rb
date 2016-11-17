#!/usr/bin/env ruby
arr = (1..16)
puts "With each"
slice = []
arr.each do |x|
  slice << x
  next unless x % 4 == 0
  puts "slice: #{slice}"
  slice = []
end

puts "With each_slice"
arr.each_slice(4) { |slice| puts "slice: #{slice}" }
