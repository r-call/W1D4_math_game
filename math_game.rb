#2 player math game #pseudocode for two player math game

require 'pry'
require 'pry-byebug'

def math_game
  p1_lives = 3
  p2_lives = 3
  #player_turn = 1+ random (1)

  while p1_lives > 0 && p2_lives > 0
    puts "Player 1 go:"
    generate_question
    #puts @answer
    player_ans = Integer(gets.chomp)
    binding.pry
    if player_ans != @answer
      p1_lives -= 1
    end
    
    puts "Player 2 go:"
    generate_question
    #puts @answer
    player_ans = Integer(gets.chomp)
    if player_ans != @answer
      p2_lives -= 1
    end

    puts "Player 1: #{p1_lives} lives remaining   Player 2: #{p2_lives} lives remaining"
  end

  if (p1_lives ==0 && p2_lives ==0)
    puts "You both suck"
  elsif p1_lives == 0
    puts "Player 1 loses"
  else
    puts "Player 2 loses"
  end
end

def generate_question
  @answer = 0

  num_1 = 1 + rand(100)
  num_2 = 1 + rand(100)

  @answer = num_1 + num_2

  puts "what is #{num_1} + #{num_2}?"
  
end

math_game