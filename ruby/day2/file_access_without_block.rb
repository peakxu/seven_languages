#!/usr/bin/env ruby
# Benefit of block is auto management of resources with scope
# similar to Python context manager
file = File.open('test.txt', 'rt')
puts file.read
file.close
