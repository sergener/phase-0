# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? The input is a positive integer of any length
# What is the output? (i.e. What should the code return?) The output returns a comma seperated integer as a string.
# What are the steps needed to solve the problem?
#return i.to_s if i <= 3
#take the integer and reverse it
#turn it into an array?
#the method should take into account .length. 
# return input.to_s


#potential methods:
#reverse could look at the integer in reverse and add commas
#split?

# 1. Initial Solution

def separate_comma(i)
	if i <=3
		return i
	else new_i = i.to_s.reverse
	arr = []
		until new_i.empty?
	  	arr << new_i.slice!(0..2)
	  end
	return arr.join(",").reverse
	end
end




# 2. Refactored Solution




# 3. Reflection

=begin
	
What was your process for breaking the problem down? What different approaches did you consider?
I have a lot of trouble writing out pseudocode directly onto the screen, so this challenge was the first time I decided to write it on paper instead. This was very helpful in being able to break down the challenge. While hopefully someday I will learn to think more clearly in steps that work for Ruby, it was useful to be able to kind of freely doodle solutions in a non linear order before coming up with a final pseudocode. 
My initial though was definitely to reverse the string and break into arrays, as I did, though I did consider some other solutions that never fully formed enough for me to implement them.

Was your pseudocode effective in helping you build a successful initial solution?
It was! I did go back at times to clarify what I needed in my pseudocode so I could reference how explicit I'd been later on.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
I hadn't used .slice before. I find the docs very difficult to read so found .slice on stackoverflow to get a clearer image of what it did, then looked it up to figure out how to use it. This isn't in my refectored method, and it took so long to get to this solution that I needed a break from it.

How did you initially iterate through the data structure?
Do you feel your refactored solution is more readable than your initial solution? Why?
	
end