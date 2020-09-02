require_relative "game"
require "readline"

answer = nil
@current_position = Array(1..15).sample
@bot_rooms = [Array(1..15), Array(1..20), Array(1..25)]
@bot1 = @bot_rooms[1].sample
@bot2 = @bot_rooms[1].sample
@bot3 = @bot_rooms[1].sample
@weapons = %w(Rocket Uzi Gun Nunchaku)
@bot_team = %w(bot1 bot2 bot3)
@bot_position = { "Bot 1" => @bot1, "Bot 2" => @bot2, "Bot 3" => @bot3 }
@running = true
@dead = false

puts "⭐️ Hello, Welcome to SHOT GUN on command line ⭐️"
puts "           -----------------------           "
sleep 1
puts "This game a is really simple game, for each turn you'll have the choice to move (left or right)"
puts "..."
sleep 2
puts "or choose between the given weapons to try to kill your 3 enemies 😱"
puts "..."
sleep 2
puts "- What's your user name ?"
print "> "
user_name = gets.chomp
puts "- Ok ! #{user_name} are you ready to start ? (Yes/No)"
print "> "
user_answer = gets.chomp.downcase
new_game(user_answer)

sleep 3

while @bot_team.length != 0 && @running != false
  @range_damaged = nil
  # Here start the game, each turn the loop will start again
  puts "- Choose an action : (Left / Right / Fight)"
  p @bot_position
  print "> "
  user_action = gets.chomp.downcase
  puts action(user_action)

  if user_action == "left" || user_action == "right"
    puts "this is the turn of the bot team !"
    sleep 1.5
    bot_game(@current_position)
  end

  if user_action == "fight"
    display(@weapons)
    puts "- Choose your Weapon (Type the right number)"
    print "> "
    weapon_index = gets.chomp.to_i - 1
    puts "Where do you want to shoot ? (Choose a number between 1 & 15)"
    pointing_number = gets.chomp.to_i
    puts weapon(weapon_index)
    puts "..."
    damage(weapon_index, pointing_number)
    sleep 1
    target(@bot_position)
    sleep 1
    if @bot_team.length != 0
      puts "this is the turn of the bot team !"
      sleep 1.5
      bot_game(@current_position)
    end
  end
  self.game_over?
end
puts "- GoodBye ! 👋"
