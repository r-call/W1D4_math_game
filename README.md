#pseudocode for two player math game

math_game
  initialize p1_lives, p2_lives = 3
  player_turn = random (1 or 2)

  while p1_lives > 0 && p2_lives > 0
    generate_question
    player_ans = gets.chomp
    subtract a life if player_ans is incorrect
    display player_1, player_2 lives remaining
  end

  announce winner and loser

  play again?

end

generate_question
  @answer

  num_1 = 1 + rand(100)
  num_2 = 1 + rand(100)

  puts "what is #{num_1} + {num_2}?"
  
end