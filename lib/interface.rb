require_relative "game"
require 'readline'

puts "⭐️ Hello, Welcome to Worms on command line ⭐️"
sleep 1
puts "This game a is really simple game, for each turn you'll have the choice to move (left or right)"
puts "..."
sleep 2
puts "or choose between 3 weapons in a given list to try to shoot your 3 enemys 😱"
puts "..."
sleep 2
puts "What's your user name ?"
print "> "
user_name = gets.chomp
puts "Ok ! #{user_name} are you ready to start ? (Yes/No)"
print "> "
user_answer = gets.chomp
new_game(user_answer)

sleep 3

# Here start the game, each turn the loop will start again

while input = Readline.readline('> ', true)
  puts "It's your turn, Choose an action : (Left / Right / Fight)"
  user_action = gets.chomp
  puts action(user_action)
  
  break if input == 'exit'
end
