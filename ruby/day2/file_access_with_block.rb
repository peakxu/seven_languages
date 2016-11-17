#!/usr/bin/env ruby
File.open('test.txt', 'rt') do |file|
  puts file.read
end
