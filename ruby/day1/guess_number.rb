#!/usr/bin/env ruby
hidden_num = rand(10)
puts "Guess a number between 0 - 9"
until (guess = gets.to_i) == hidden_num
  if guess < hidden_num
    puts 'too low'
  elsif guess > hidden_num
    puts 'too high'
  end
end
puts "You got it! It was #{hidden_num}"
