## Classes
  - Player
  - Question
  - Game
  - Turn

## Roles
  - Player
    - name
    - lives
  - Question
    - question/response
    - validated anser method
  - Game
    - game start
    - game end (from player's lives)
  - Turn
    - Prompts who's turn it is
    - After receiving info from Question switches to the other turn

class Player
  @name
  @lives
Class Question
  def make new question
    qpart1 = math.rand(1-20)
    qpart2 = math.rand(1-20)
    puts "what's the sum of #qpart1 and #qpart2"
  end

  response = gets.chomp
    if response == qpart1 + qpart2
      yes you are correct!
      next player turn
    else
      current player lives - 1

class game
  new game

