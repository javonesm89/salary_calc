path = "/Users/javonesmith/Post_Flatiron/Prac_Ruby/salary_calc/lib/salary_calculator.rb"

require_relative path

require 'tty-prompt'
prompt = TTY::Prompt.new

puts "Hey! Let's make some money!"

sleep(1)

name = prompt.ask("What's your name?")

puts "#{name}, let's figure out how much to pay you!"
