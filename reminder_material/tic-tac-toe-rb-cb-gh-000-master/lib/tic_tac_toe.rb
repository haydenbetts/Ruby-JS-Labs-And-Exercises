require 'pry'

WIN_COMBINATIONS = [
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
    if player == 1
      board[input] = "X"
      player = 2
      game_loop(board, player)
    else
      board[input] = "O"
      player = 1
      game_loop(board, player)
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
