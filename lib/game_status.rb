# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],
  [1,4,7],
  [0,3,6],
  [2,5,8],
  [6,4,2],
  [0,4,8],
]

def won?(board)
  WIN_COMBINATIONS.each do | combination |
    if board[combination[0]] == "X" && board[combination[1]] == "X" && board[combination[2]] == "X"
      return combination # return the win_combination indexes that won.
    elsif board[combination[0]] == "O" && board[combination[1]] == "O" && board[combination[2]] == "O"
      return combination
    end
  end
  else
     false
end

def full?(board)
  if board.include?(" ")
   return false
 else
   return true
  end
end

def draw?(board)
  if won?(board)
    return false
  elsif !(full?(board))
    return false
  else
    return true
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
    #accepts a board and returns true if the board has been won, is a draw, or is full.
  end
end

def winner(board)
  if won?(board)
    WIN_COMBINATIONS.each do | combination |
      if board[combination[0]] == "X" && board[combination[1]] == "X" && board[combination[2]] == "X"
        return "X" # return the win_combination indexes that won.
      elsif board[combination[0]] == "O" && board[combination[1]] == "O" && board[combination[2]] == "O"
        return "O"
      end
    end
  else
    return nil
  end
end
