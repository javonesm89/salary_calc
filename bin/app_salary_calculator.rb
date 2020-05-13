path = "/Users/javonesmith/Post_Flatiron/Prac_Ruby/salary_calc/lib/salary_calculator.rb"
require_relative path
require 'tty-prompt'
prompt = TTY::Prompt.new

puts "FULL DISCLOSURE!"
puts "ALL CALCULATIONS ARE BASED OFF SINGLE FILER (E.G, 'single man', 'single woman')"
sleep(2)

puts "Hey! Let's make YOU some money!"
sleep(1)

name = prompt.ask("What's your name?")
sleep(0.5)

puts "#{name}, let's get paid!"
sleep(0.5)

puts "But first #{name}, I need a litte more info from you."

answer = prompt.yes?("Sounds Good?")

if (answer == true)
    puts "Woot Woot 💰"
else 
    puts "Oh, ok. I guess next time ✌️"
    sleep(0.5)
    abort
end
sleep(0.5)

career = prompt.ask("What are you currently doing or plan on doing for your career?", require: true)

state = prompt.ask("What state do live in or intend to live in? (Ex. NY, tx)", required: true) do |q|
    q.modify :up
end
puts "You're a #{career} in #{state}? Nice! Keep it up."
sleep(1)

if (income_tax?(state))
    puts "Unfortunately, #{state} is a tax income state. 😕"
elsif (no_income_tax?(state))
    puts "Fortunately, #{state} is not a tax income state. 😎"
elsif (interest_dividends?(state))
    puts "Hm. So, #{state} is not an tax income state but there's a catch. 🤔" 
    sleep(0.5)
    puts "You will have to pay interest on dividends in the state of #{state}."
end

puts "Now #{name}, let's see how much you'll take home in the state of #{state}. "
sleep(1)

prompt.


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








