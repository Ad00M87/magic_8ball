require 'pry'
require 'colorize'

@eightball_output = [
  "Try again.",
  "Not even close.",
  "Dream on.",
  "As if.",
  "Go for it!",
  "Absolutely!",
  "Yes!",
  "No."
]
@history = []

#_______________Menu____________________

def menu
  menu_arr = ["Ask a question.", "History", "Quit"]

  menu_arr.each_with_index { |option, i| puts "#{i + 1}: #{option}"}

  choice = gets.to_i

  case choice
    when 1
      ask_question
    when 2
      history
    when 3
      puts "Thanks for giving me your wallet. Bye bye!".colorize(:red)
      exit
    else
      puts "That isn't an option. Don't make me strike you down!"
  end
end

#_______________Question____________________

def ask_question
  puts "==========================================".colorize(:yellow)
  puts "What would you like to ask the eight ball?"
  puts "==========================================".colorize(:yellow)
  question = gets.to_s
  if /Cowabunga/.match(question)
    easter_egg
  end
  @history << question
  puts "==========================================".colorize(:yellow)
  puts @eightball_output.sample
  puts "==========================================".colorize(:yellow)
  menu
end

#_______________History____________________

def history
  puts "==========================================".colorize(:cyan)
  @history.each_with_index { |value, i| print "#{i + 1} - #{value}"}
  puts "==========================================".colorize(:cyan)
end

#_______________Easter Egg functions___________________

def easter_egg
  puts "==============================================".colorize(:color => :blue, :background => :yellow)
  puts "That is the secret password: Tell me what to do."
  puts "==============================================".colorize(:color => :blue, :background => :yellow)
  easter_arr = ["Add a new answer", "Reset answers", "View possible answers"]
  option = gets.to_i
  case option
  when 1
  when 2
  when 3
  else
  end


def add_answer
  puts "Enter a new answer."
  new_answer = gets.to_s
  @eightball_output << new_answer
  @eightball_output.uniq! #Need to figure this one out...as It lets me add them to the end but not after they have been added.
end

def view_answers
  puts "==========================================".colorize(:yellow)
  puts @eightball_output
  puts "==========================================".colorize(:yellow)
  menu
end

while true
  menu
end
