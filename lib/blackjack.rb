def welcome
  puts  "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total (card_total)
 puts "Your cards add up to #{card_total}"
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total (sum)
  sum
end

def hit? (num)
  prompt_user  
  h_s = get_user_input
  if h_s == "h" 
    card = deal_card
    else h_s != "s"
    invalid_command
    prompt_user
  end
  total = num + card
  display_card_total (total)
end

def invalid_command
  puts  "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
