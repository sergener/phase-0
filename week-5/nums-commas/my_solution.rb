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