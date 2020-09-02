def initialize 
  @current_position = Array(1..15).sample
  @bot1 = Array(1..15).sample
  @bot2 = Array(1..15).sample
  @bot3 = Array(1..15).sample
  @weapons = %w(Rocket, Hallelujah, Sheep, Gun)
end

def new_game(user_answer)
  if user_answer == "Yes"
    ""
  else user_answer == "No"
    exit
  end
  puts "Loading a new game"
  puts "..."
  
end

def action (user_action)
  if user_action == "right"
    current_position = current_position + 1
    puts "Moving on the right"
  elsif user_action == "left"
    current_position = current_position - 1
    puts "Moving on the left"
  elsif user_action == "fight"
    "Let's choose a weapon ! 🚀"
  else
    "CAN YOU PLEASE CHOOSE AN ACTION WITHIN THE LIST ? 😬"
  end
end

def weapon_display
  @weapons.each_with_index do |weapon, idx|
    "[#{idx + 1}] - #{weapon}"
  end
end

def weapon (user_choice)
  if user_choice == "Rocket"
    "🚀 BOOM ! 💥"
  elsif user_choice == "Hallelujah"
    "🔊 Hallelujah 🔊 BOOM ! 💥"
  elsif user_choice == "Sheep"
    "🐑 Bêêêê 🐑 BOOM ! 💥"
  elsif
  user_choice == "Gun"
    "Paf ! 💥"
  else
    "CAN YOU PLEASE CHOOSE A WEAPON WITHIN THE LIST ? 😬"
  end
end
