# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]]
  
def won?(board)
  WIN_COMBINATIONS.each do |win|
  if win.all?{|sequence| board[sequence] == "X"}
    return win
    elsif win.all?{|sequence| board[sequence] == "O"}
      return win
    end
  end
  return false
end

def full?(board)
  board.all? do |position|
    position == "X" || position == "O"
  end
end

def draw?(board)
  if !full?(board) && !won?(board)
    return false
  elsif won?(board)
    return false 
  elsif full?(board)
    return true 
  end
end
def over?(board)
  if full?(board) || won?(board) || draw?(board)
    return true
  else
    return false
  end
end
def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end

  
  
      