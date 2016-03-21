# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An integer called guess
# Output: 
# Steps:
# Initialize an 
# Guess: def guess(integer) if integer < @answer return :low || integer > answer return :high
#else return :correct
# Solved: if .guess returns correct return true else false


# Initial Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
  end

  def guess(integer)
    @guess = integer 
  	 if integer < @answer
      :low
  	 elsif integer > @answer
      :high
  	 else
      :correct
  	end
  end

  def solved?
    if @answer == @guess
    	return true
    else
    	return false
    end
  end
end


# Refactored Solution

# Reflection

=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  Instance variables represent attributes of an object. In this case, I set the game's answer and guess as instance variables.

  Instance methods define the behavior of the object. Each method I used in the guessing game has a different behavior: initialize allows me to create @answer, guess allows me to create @guess and return how it relates to @answer, and solved? allows me to compare both instance variables to return whether the game is over or not.

  Because these are all bundled up within a single class, they can then be utilized together.


When should you use instance variables? What do they do for you?
  Instance variables are useful if you need to access the same variable information across a class. When I need a variable in multiple methods in that class, it's helpful to have an instance variable.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  Flow control is how to control branching in code. I used if loops in this particular class to check the integer's value and to decide what to return based on the answer.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  Symbols can't be altered after they've been created in code. Unlike strings, they always have the same object ID. Since this is a guessing game, and the return values of :low, :high, and :correct won't be changed, it makes sense to use symbols.

=end