#!/usr/bin/env ruby
hash = { 'hello' => 'world' }
puts "Original hash: #{hash}"
array_form = hash.to_a
puts "In array form: #{array_form}"
hash_form = array_form.to_h
puts "Back to hash form: #{hash_form}"
