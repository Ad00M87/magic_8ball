require 'pry'
require 'colorize'
# try again
# not even close
# dream on
# as if
# go for it
# absolutely
# yes
# no



#_______________Menu____________________

def menu
  menu_arr = [
    "Ask a question.", "History", "Exit"
  ]

  menu_arr.each_with_index { |option, i| puts "#{i + 1}: #{option}"}

  choice = gets.to_i

end

#_______________Question____________________

def ask_question
  puts "What would you like to ask the eight ball?"
  question = gets.to_s
end

while true
  menu
end
