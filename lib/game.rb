def new_game(user_answer)
  if user_answer == "yes" || "y"
    ""
  else user_answer == "no" || "n"
    exit
  end
  puts "Loading a new game"
  puts "..."
end

def action (user_action)
  if user_action == "right"
    @current_position = @current_position + 1
    puts "Moving on the right you are here : #{@current_position}"
  elsif user_action == "left"
    @current_position = @current_position - 1
    puts "Moving on the left you are here : #{@current_position}"
  elsif user_action == "fight"
    "Let's choose a weapon ! 🚀"
  else
    "CAN YOU PLEASE CHOOSE AN ACTION WITHIN THE LIST ? 😬"
  end
end

def display(weapons)
  weapons.each_with_index do |weapon, index|
    puts "[#{index + 1}] - #{weapon}"
  end
end

def weapon (user_choice)
  if user_choice == 0
    "🚀 BOOM ! 💥"
  elsif user_choice == 1
    "🔊 Hallelujah 🔊 BOOM ! 💥"
  elsif user_choice == 2
    "🐑 Bêêêê 🐑 BOOM ! 💥"
  elsif
  user_choice == 3
    "Paf ! 💥"
  else
    "CAN YOU PLEASE CHOOSE A WEAPON WITHIN THE LIST ? 😬"
  end
end
