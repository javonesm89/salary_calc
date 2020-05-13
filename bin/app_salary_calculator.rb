path = "/Users/javonesmith/Post_Flatiron/Prac_Ruby/salary_calc/lib/salary_calculator.rb"
require_relative path
require 'tty-prompt'
prompt = TTY::Prompt.new

puts "Hey! Let's make YOU some money!"
sleep(1)

name = prompt.ask("What's your name?")
sleep(0.5)

puts "#{name}, let's get paid!"
sleep(0.5)

puts "But first #{name}, I need a litte info from you."

answer = prompt.yes?("Sounds Good?")

if (answer == true)
    puts "Woot Woot 😎"
else 
    puts "Oh, ok. I guess next time 😟"
    sleep(0.5)
    abort
end
sleep(0.5)


state = prompt.ask("What state do live in or intend to live in? (Ex. NY, TX)", required: true) do |q|
    q.modify :up
end

puts "I heard #{state} is nice around this time of year."

if (income_tax?(state))
    puts "Unfortunately, #{state} is an income state."
elsif (no_income_tax?(state))
    puts "Fortunately, #{state} is not an income state."
elsif (interest_dividends?(state))
    puts "Hm. So, #{state} is not an income state but there's a catch." 
    sleep(0.3)
    puts "You will have to pay interest on dividends in the state of #{state}."
end

puts ""

# end ? "It's here!" : "No it's not"
# puts outcome

# sleep(0.5)

# career = prompt.ask("What do you do for a living or plan on doing?")
# salary = prompt.ask("Ok, and how are they paying you or offering you?")

# puts "Mm, thanks."

# salary_calc(career,salary)











# changing the available answer options with prompt
# answer = prompt.yes?("Sounds good?") do |q|
#     q.suffix "Let's do it 😁 / Mm, no thanks 🥺"
# end








