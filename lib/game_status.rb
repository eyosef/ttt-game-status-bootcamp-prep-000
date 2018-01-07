# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]

def won?(board)
  WIN_COMBINATIONS.detect do |array|
    binding.pry
    if board[0..2] != array || board[3..5] != array || board[6..8] != array 
      false
    elsif board[0].to_a && board[1].to_a && board[2].to_a == WIN_COMBINATIONS.include?([0,1,2]).to_a
      true 
    end
  end
end 