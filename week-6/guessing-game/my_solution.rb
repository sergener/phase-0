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
	integer < @answer = :low
	integer > @answer = :high
	integer == @answer = :correct
	end
end


def solved?
  if @answer.guess == :correct
  	return true
  else
  	return false
end
end




# Refactored Solution






# Reflection