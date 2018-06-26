require 'byebug'

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
player = 1

def greeting(board, player)
  puts "Welcome to Tic Tac Toe!"
  game_loop(board, player)
end

def game_loop(board, player)
  display_board(board)
  input = get_input(player)

  if valid_move?(board, input)
    # for now I am just going to try updating the board
    # this outer if loop looks bad
    if player == 1
      board[input] = "X"

      # pass win_combinations and current board to game_over?
      if game_over?(board, player)
        puts "Player #{player} wins!"
      else
        player = 2
        game_loop(board, player)
      end

    else
      board[input] = "O"

      if game_over?(board, player)
        puts "Player #{player} wins!"
      else
        player = 1
        game_loop(board, player)
      end

    end
  else
    game_loop(board, player)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def get_input(player)
  puts "Enter your move Player #{player}"
  gets.strip.to_i
end

def valid_move?(board, input)
  if board[input] == " "
    true
  else
    false
  end
end

def game_over?(board, player)
  case player
  when 1
    WIN_COMBINATIONS.detect do |combo|
      board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X"
    end
    when 2
      WIN_COMBINATIONS.detect do |combo|
        board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
      end
  end
end

def draw?(board)
end

# figure out how to eliminate the player inputs

def play(board)
  # while !over?(board)
  #   turn(board)
  # end
  # if won?(board)
  #   puts "Congratulations #{winner(board)}!"
  # elsif draw?(board)
  #   puts "Cats Game!"
  # end
end

def display_board(board)
end

def valid_move?(board, index)
end

def won?(board)
end

def full?(board)
end

def draw?(board)
end

def over?(board)
end

def input_to_index(user_input)
end

def turn(board)
end

def position_taken?(board, index)
end

def current_player(board)
end

def turn_count(board)
end

def move(board, index, player)
end

def winner(board)
end


# 1. Display greeting
# 2. display board
# 3. Ask for input from player x
  # call the validate function on the new input
# 4. Determine if input is valid
  # 4a if valid, and if player 1, insert x
    # call the win condition function on updated array
  # 4b if valid, and if player 2, insert o
    # call the win condition function on updated array
  # 4c if not valid, run the ask for input function again

# 5. Determine if the game is over.
  # check your array against the win conditions array.
  # if it matches any of them, congrats the winner
  # if not, ask for input from the next player

greeting(board, player)
