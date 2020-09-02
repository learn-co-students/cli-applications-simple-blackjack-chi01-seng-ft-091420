def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input 
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end


def invalid_command
  puts "Please enter a valid command"
end

def hit?(card_total)
  prompt_user
  valid_inputs= ["h", "s"]
  input = get_user_input
  
#   until valid_inputs.include?(user_input)
#     invalid_command
#     prompt_user
#     user_input = get_user_input
#   end
  
#   if user_input == "h"
#     card_total += deal_card
#   end
#   card_total
# end
  
  if input == "s"
    card_total
  elsif input == "h"
    card_total += deal_card
  else
    invalid_command
    hit?(card_total)
  end
end

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
      if card_total == 21
        return puts "YOU WIN!"
      end
  end
  end_game(card_total)
end
    
