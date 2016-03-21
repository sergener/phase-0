# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Create an array with the letters of bingo and use .sample to return a single one
  #Add a number between 1-100, chosen randomly and turned into a string (1..100) .rand
  #Return a combined version.

# Check the called column for the number called.
  #Turn board into a hash? Letters are keys and values are the arrays of integers.
  #Hash for letters: B => 0, etc. 
  #If the letter is the same as the key, iterate through each @bingo_board array position with the value to check if the number is the same.
  #If it is, return a congratulatory message, if not return too bad.

# If the number is in the column, replace with an 'x'
  #If previous method returns true, iterate through the arrays to find that number.
  #Replace the number with an "X"

# Display a column to the console
  #Argument should get a letter
  #Using the hash keys and values, iterate through the arrays to target the value position of each array.
  #Create a new array of arrays with the letter and each value

# Display the board to the console (prettily)
  #p the changed board to the console.

# Initial Solution

class BingoBoard
attr_accessor :number

  def initialize(board)
    @bingo_board = board
    @number = nil
    bingo_hash = {"B"=>0, "I"=>1, "N"=>2, "G"=>3, "O"=>4} #to target the letter + array positon
  end

  def bingo_number
    bingo = ["B", "I", "N", "G", "O"]
    @number = bingo.shuffle + (1..100).rand.to_s
    puts "The current call is #{@number}"
  end

  def check_and_replace
    position = nil

    @bingo_hash.each do |key, value|
      if key == @number.initial
        position == value
      end
    end

    @bingo_board.map! do |array_internal| #iterate through each array destructively
      array_internal[position] do |object| #iterate through each internal array in specific position
        if object == @number.slice(1..-1).to_i
          object == "X"
          puts "Lucky you, #{@number} is on your board!"
        else
          puts "Too bad, you don't have #{@number} on your board."
        end
      end
    end
  end

  def print_column
    position = nil

    @bingo_hash.each do |key, value|
      if key == @number.initial
        position == value
      end
    end

    puts @number.initial
    @bingo_board.each do |inner_array|
      puts inner_array[position]
  end

  def print_board
    puts "B I N G O"
    @bingo_board.each do |inner_array|
      puts inner_array.join" "
    end
  end

  def return_board
    puts "Play BINGO!"
    sleep 0.8
    p bingo_number
    sleep 0.8
    p check_and_replace
    sleep 0.8
    p print_column
    sleep 0.8
    puts "Your updated board:"
    p print_board
  end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.return_board

#Reflection

=begin
def check_and_replace
    if @number.initial == "B"
      integer = @number.slice(0).to_i
      
      @bingo_board[0].each {|i|
        if i == integer
          i == "X"
        end}
    end

    elsif @number.initial == "I"
      integer = @number.slice(0).to_i
      
      @bingo_board[1].each {|i|
        if i == integer
          i == "X"
        end}
    end

    @number.initial == "N"
      integer = @number.slice(0).to_i
      
      @bingo_board[2].each {|i|
        if i == integer
          i == "X"
        end}
    end

    @number.initial == "G"
      integer = @number.slice(0).to_i
      
      @bingo_board[3].each {|i|
        if i == integer
          i == "X"
        end}
    end

    @number.initial == "O"
      integer = @number.slice(0).to_i
      
      @bingo_board[4].each {|i|
        if i == integer
          i == "X"
        end}
    end


def check_and_replace
    if @number.initial == "B"
      integer = @number.slice(0).to_i

      @bingo_board.each {|array|
        array.each {|i|
          if i[0] == integer
            i == "X"
          end}
        }
    end
    
    elsif @number.initial == "I"
      integer = @number.slice(0).to_i

      @bingo_board.each {|array|
        array.each {|i|
          if i[1] == integer
            i == "X"
          end}
        }
    end

    elsif @number.initial == "N"
      integer = @number.slice(0).to_i

      @bingo_board.each {|array|
        array.each {|i|
          if i[2] == integer
            i == "X"
          end}
        }
    end
  end

    elsif @number.initial == "G"
      integer = @number.slice(0).to_i

      @bingo_board.each {|array|
        array.each {|i|
          if i[3] == integer
            i == "X"
          end}
        }
    end
  end

    elsif @number.initial == "O"
      integer = @number.slice(0).to_i

      @bingo_board.each {|array|
        array.each {|i|
          if i[4] == integer
            i == "X"
          end}
        }
    end
  end

    else puts "Too bad, #{@number} isn't on this board!"
  end

end
end

=end
