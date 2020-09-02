require_relative "game"
# require "readline"

answer = nil
@current_position = Array(1..15).sample
@bot_map = Array(1..15)
@bot1 = @bot_map.sample
@bot2 = @bot_map.sample
@bot3 = @bot_map.sample
@weapons = %w(Rocket Hallelujah Sheep Gun)
@user_team = 

# while answer != "exit"
  puts "⭐️ Hello, Welcome to Worms on command line ⭐️"
  puts "           -----------------------           "
  # sleep 1
  puts "This game a is really simple game, for each turn you'll have the choice to move (left or right)"
  puts "..."
  # sleep 2
  puts "or choose between 3 weapons in a given list to try to shoot your 3 enemys 😱"
  puts "..."
  # sleep 2
  puts "- What's your user name ?"
  print "> "
  user_name = gets.chomp
  puts "- Ok ! #{user_name} are you ready to start ? (Yes/No)"
  print "> "
  user_answer = gets.chomp.downcase
  new_game(user_answer)
  
  # sleep 3

  # Here start the game, each turn the loop will start again
  puts "- Choose an action : (Left / Right / Fight)"
  print "> "
  user_action = gets.chomp.downcase
  puts action(user_action)

  if user_action == "fight"
    display(@weapons)
    puts "- Choose your Weapon (Type the right number)"
    print "> "
    weapon_index = gets.chomp.to_i - 1
    puts weapon(weapon_index)
  end

# end

puts "- GoodBye !"