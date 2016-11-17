#!/usr/bin/env ruby
expression = ARGV[0]
unless expression
  $stderr.puts "Must provide regex as first argument"
  exit(1)
end
filename = ARGV[1]
unless filename
  $stderr.puts "Must provide filename as second argument"
  exit(1)
end
regex = Regexp.new(expression)
lineno = 0
File.readlines(filename).each do |line|
  lineno += 1
  md = regex.match(line)
  next unless md
  puts "#{lineno} #{line}"
end
