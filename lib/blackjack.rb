require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card_total = rand 1..11
  #how to generate random number between 1 and 11
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp 
  #test
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = 0
  counter = 0 
    while counter < 2
      sum += deal_card
      counter += 1 
 end      
  display_card_total(sum)
  sum 
  #binding.pry
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == 's'
      card_total
   elsif input == 'h'
     card_total += deal_card
     else input != 's' && input != 'h'
       invalid_command
       hit?(card_total)
  end
  card_total
end

def invalid_command
 puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################
 
def runner
  #need to define variables card_total and sum 
  welcome
  card_total = initial_round
    until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
 end_game(card_total)
end 