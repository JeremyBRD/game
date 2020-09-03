# STEP 1 define when the game is starting
def new_game(user_answer)
  if user_answer == "yes" || user_answer == "y"
    puts ""
  else user_answer == "no" || user_answer == "n"
    @running = false
  end
  if @running == true
    puts "Loading a new game"
    puts "..."
  end
end

def play_again?(answer)
  answer == "yes" || answer == "y"
    @running = true
  answer == "no" || answer == "n"
    @running = false
end

# STEP 2 different routes for the user
def action (user_action)
  if user_action == "right"
    @current_position = @current_position + 1
    puts "- Moving to the right, you are here : #{@current_position}"
  elsif user_action == "left"
    @current_position = @current_position - 1
    puts "- Moving to the left, you are here : #{@current_position}"
  elsif user_action == "fight"
    puts "- Let's choose a weapon ! 🚀"
  else
    puts "- CAN YOU PLEASE CHOOSE AN ACTION WITHIN THE LIST ? 😬"
  end
end

# STEP 3 define the actions (display, damage and targeting)
def display(elements)
  elements.each_with_index do |element, index|
    puts "[#{index + 1}] - #{element}"
  end
end

def weapon (user_choice)
  if user_choice == 0
    "🚀 BOOM ! 💥"
  elsif user_choice == 1
    "Pouf BOOM ! 💥"
  elsif user_choice == 2
    "BAM BOOM ! 💥"
  elsif
  user_choice == 3
    "Paf ! 💥"
  else
    "- CAN YOU PLEASE CHOOSE A WEAPON WITHIN THE LIST ? 😬"
  end
end

def damage(weapon, pointing_number)
  if weapon == 0
    @range_damaged = [pointing_number, pointing_number+1]
  elsif weapon == 1
    @range_damaged = [pointing_number, pointing_number + 1, pointing_number + 2, pointing_number + 3]
  elsif weapon == 2
    @range_damaged = [pointing_number, pointing_number + 1, pointing_number + 2]
  else
    @range_damaged = [pointing_number]
  end
end

def target(bots_position)
  @range_damaged.each do |damage|
    if damage == @bot_position["Bot 1"]
      puts "- You killed the bot 1 ! 🙌 he was on position #{@bot1}"
      @bot_position.delete("Bot 1")
    elsif damage == @bot_position["Bot 2"]
      puts "- You killed the bot 2 ! 🙌 he was on position #{@bot2}"
      @bot_position.delete("Bot 2")
    elsif damage == @bot_position["Bot 3"]
      puts "- You killed the bot 3 ! 🙌 he was on position #{@bot3}"
      @bot_position.delete("Bot 3")
    end
  end
  if @bot_position.size == 0
    puts "🏆 YOU WON !!!! 🏆"
    puts "******************"
  end
end

# STEP 4 define the bot game
def bot_game(current_position)
  @dead = Array(1..15).sample == current_position ? true : false
  if @dead == true
    puts "You DIE !!"
    puts "❌ GAME OVER ❌"
    puts "****************"
  else
    puts "The bot missed his target !"
  end
end

# STEP 5 define Game Over
def game_over?
  if @dead == true
    @running = false
  end
end
