require_relative "game"
require 'readline'

puts "⭐️ Hello, Welcome to Worms on command line ⭐️"
sleep 1
puts "This game a is really simple game, for each turn you'll have the choice to move (left or right)"
puts "..."
sleep 2
puts "or choose between 3 weapons in a given list to try to shoot your 3 enemys"
puts "..."
sleep 2
puts "Be carefull there is a limited number of munitions for a few weapons 😱"
puts "..."
sleep 2
puts "What's your user name ?"
print "> "
user_name = gets.chomp
puts "Ok ! #{user_name} are you ready to start ? (Press enter or type exit)"
print "> "
user_answer = gets.chomp

puts "Loading a new game"
puts "..."
sleep 3

# Here start the game, each turn the loop will start again
while input = Readline.readline('> ', true)
  break if input == 'exit'
end
