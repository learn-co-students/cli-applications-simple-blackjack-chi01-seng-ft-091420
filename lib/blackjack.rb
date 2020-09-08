def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(cards)
  puts "Your cards add up to #{cards}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(cards)
  puts "Sorry, you hit #{cards}. Thanks for playing!"
end

def initial_round
  fir_card = deal_card
  sec_card = deal_card
  cards = fir_card + sec_card
  display_card_total(cards)
  cards
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(cards)
  prompt_user
  bet = get_user_input
  if bet == 's'
    cards
  elsif bet == 'h'
    new_card = deal_card
    cards += new_card
  else
    invalid_command
    hit?(cards)
  end
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  cards = initial_round
  until cards > 21 do
    cards = hit?(cards)
    display_card_total(cards)
  end
  end_game(cards)
end
    
