require './question'
require './player'

player1 = Player.new(1)
player2 = Player.new(2)

current_player = [player1, player2]

while player1.lives > 0 && player2.lives > 0

  puts "\nP1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  puts "\nPlayer #{current_player[0].number}'s turn!"

  q = Question.new
  q.new_question

  if !q.verify_answer
    new_lives = current_player[0].lives -= 1
    puts "\nPlayer #{current_player[0].number} has #{new_lives} lives left"
  else
    puts "\nPlayer #{current_player[0].number} has #{current_player[0].lives} lives left"
  end

  current_player.reverse!

  puts "\n<======================================================>"

end

if player1.lives > 0
  winner = "Player 1"
else
  winner = "Player 2"
end

puts "\nGame Over: #{winner} has wrecked their opponent\n
<======================================================>"
