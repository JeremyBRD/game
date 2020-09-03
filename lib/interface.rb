require_relative "game"
require "byebug"

# Set all the variables
@current_position = Array(1..15).sample
@bot_maps = [Array(1..15), Array(1..20), Array(1..25)]
@weapons = %w(Rocket Uzi Gun Nunchaku)
@maps = %w(Library Castle Factory)
@running = true
@dead = false

while @running == true
  puts "⭐️ Hello, Welcome to SHOT GUN on command line ⭐️"
  puts "           -----------------------           "
  sleep 1
  puts "This game a is really simple game, for each turn you'll have the choice to move (left or right)"
  puts "..."
  sleep 2
  puts "or choose between the given weapons to try to kill your 3 enemies 😱"
  puts "..."
  sleep 2
  # puts "At any time you can run the command \"help\" to have a reminder "
  puts "- What's your user name ?"
  print "> "
  user_name = gets.chomp
  # Ask the user to choose a map
  puts "- Choose a map : (pick a number)"
  display(@maps)
  map_number = gets.chomp.to_i - 1
  @bot1 = @bot_maps[map_number].sample
  @bot2 = @bot_maps[map_number].sample
  @bot3 = @bot_maps[map_number].sample
  @bot_position = { "Bot 1" => @bot1, "Bot 2" => @bot2, "Bot 3" => @bot3 }
  # Ask the user if he is ready to play && start the process
  puts "- Ok ! #{user_name} are you ready to start ? (Yes/No)"
  print "> "
  user_answer = gets.chomp.downcase
  new_game(user_answer)

  # The game starts here, at each turn the loop will start again
  while @bot_position.length != 0 && @running != false
    # User turn
    @range_damaged = nil
    puts "- Choose an action : (Left / Right / Fight)"
    print "> "
    user_action = gets.chomp.downcase
    puts action(user_action)
    # Bot turn if The user Just moved
    if user_action == "left" || user_action == "right"
      puts "- This is the turn of the bot team !"
      sleep 1.5
      bot_game(@current_position)
    end
    # If the User chooses to fight, he will do it through this loop
    if user_action == "fight"
      display(@weapons)
      puts "- Choose your Weapon (Type the right number)"
      print "> "
      weapon_index = gets.chomp.to_i - 1
      puts "- Where do you want to shoot ? (Choose a number between 1 & #{@bot_maps[map_number].length})"
      print "> "
      pointing_number = gets.chomp.to_i
      puts weapon(weapon_index)
      puts "..."
      damage(weapon_index, pointing_number)
      target(@bot_position)
      # The If loop allows the bot turn not to display when the user wins
      if @bot_position.length != 0
        puts "- This is the turn of the bot team !"
        bot_game(@current_position)
      end
    end
    # Before starting the loop again, ask if the game is over
    self.game_over?
  end
  if @running == true
    puts "Play again ?"
    print "> "
    user_choice = gets.chomp
    play_again?(user_choice)
  end
end

puts "- GoodBye ! 👋"
