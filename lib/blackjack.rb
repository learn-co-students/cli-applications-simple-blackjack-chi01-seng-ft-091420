def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(numb)
  puts "Your cards add up to #{numb}"
  
  # code #display_card_total here
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(numb)
  puts "Sorry, you hit #{numb}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  sum = 0
  sum += deal_card
  sum += deal_card
  # code #initial_round here
  display_card_total(sum)
  sum
end

def hit?(total)
  # code hit? here
  prompt_user
  
  move = ""
  while move != "s" && move != "h" do
    move = get_user_input
    if move != "s" && move != "h"
      invalid_command
      prompt_user
    end
  end
  if move == "h"
    total += deal_card
  end
  
  
  total  
end

def invalid_command
  puts "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  while total < 21 do
    total = hit?(total)
    display_card_total(total)
  end
end_game(total)
end
