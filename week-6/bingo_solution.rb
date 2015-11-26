# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution
=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
    p @letter = ["B", "I", "N", "G", "O"].sample
    p @number = rand(1..101)
    if @letter == "B"
      @bingo_board.map! {|sub_array|
        if sub_array[0] == @number
          sub_array[0] = "X"
          p sub_array
          else
            p sub_array
          end
        }
      elsif @letter == "I"
      @bingo_board.map! {|sub_array|
        if sub_array[1] == @number
          sub_array[1] = "X"
          p sub_array
          else
            p sub_array
          end
        }
      elsif @letter == "N"
      @bingo_board.map! {|sub_array|
        if sub_array[2] == @number
          sub_array[2] = "X"
          p sub_array
          else
            p sub_array
          end
        }
        elsif @letter == "G"
      @bingo_board.map! {|sub_array|
        if sub_array[3] == @number
          sub_array[3] = "X"
          p sub_array
          else
            p sub_array
          end
        }
        elsif @letter == "O"
      @bingo_board.map! {|sub_array|
        if sub_array[4] == @number
          sub_array[4] = "X"
          p sub_array
          else
            p sub_array
          end
        }
      end
    end
  end

=end



# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
    p letter = ["B", "I", "N", "G", "O"].sample
    p number = rand(1..101)
    case letter
    when "B"
      array_index = 0
    when "I"
      array_index = 1
    when "N"
      array_index = 2
    when "G"
      array_index = 3
    else
      array_index = 4
    end
    @bingo_board.map! {|sub_array|
      if sub_array[array_index] == number
        sub_array[array_index] = "X"
        p sub_array
          else
            p sub_array
          end
        }
      end
    end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection
