# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 6 hours on this challenge.


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
  #Argument should get a letter and position from bingo hash
  #Using the hash keys and values, iterate through the arrays to target the value position of each array.
  #Create a new array of arrays with single object with the letter and each value.

# Display the board to the console (prettily)
  #print string BINGO to console.
  #Join each internal array with a space between them.

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
  
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  This was the first challenge we were given that had so many different parts and I think, because of that, I initially felt very overwhelmed and had difficulty breaking my thoughts down into simple, clear pseudocode. While I've gotten enormously better at pseudocoding over the past week, as I can now immediately type it out instead of having to write it out on paper to pare it down, I struggled to do it with this challenge. 

  My inability to think clearly at the start of this challenge was a major problem as I worked through it. To begin with, I managed to write a decent amount of code thinking "BINGO" went vertically instead of horizontally, which of course was wrong and unusable.

  I think for more difficult and complicated challenges like this it will be important to go back to writing my pseudocode on paper in the future, at least to be able to come up with good enough typed pseudocode to use, since drawing on paper and being able to cross things out/easily move things is more similar to how I think.


What are the benefits of using a class for this challenge?
  Being able to have all of these methods in the same class allowed me to do a lot of different things to the bingo board and have them relate. For example, it was important to be able to destructively alter the board in one method and then print the column with that change in another method, which I could do by using instance variables. 

  Also important is the ability to continue altering the bingo board as the game goes on, or create an entirely new game with a new bingo board. Because all the instance variables and methods are created within the class, and all bingo games work the same, it's possible to use this method across many different games.

How can you access coordinates in a nested array?
  To access coordinates in a nested array you must first access the nested array, then the coordinated. To access fish in this array:
   array = "["cat", "dog"],["fish", "mouse"]]
  I would first have to target the coordinate of which array fish is in and then it's coordinate in the array.
    array[1][0] would output "fish".

What methods did you use to access and modify the array?
  I used .join" " to modify the arrays to combine them and make them look nicer when printed to the console. The " " leaves a space between each number.
  I also used .map! to destructively modify the array when replacing the number with the "X".

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
  .initial let me create the call number as a string but still be able to access the first part of that string, the letter, when I needed to.


How did you determine what should be an instance variable versus a local variable?
  Determining instance variables was the most straightforward part of writing this code. Even if I initially wrote someting as a local variable, if I realized it was 

What do you feel is most improved in your refactored solution?
  I unfortunately took so much time on this challenge that I didn't have time to refactor, let alone finish debugging. I struggled a lot and was sick as well, and ultimately didn't totally finish this challenge. 

  I do intend to go back to this in week 7 and fix the issues in my code and refactor. I can definitely see areas where refactoring is going to make the code less repetitive and more readable. A particularly glaring example of this is the repetition of checking columns between the methods check_and_replace and print_column. I can also probably use the bingo hash to get my letters instead of creating a totally new local variable to generate a number.
  
end
