# Calculate the mode Pairing Challenge
​
# I worked on this challenge [by myself, with: ]
​
# I spent [] hours on this challenge.
​
# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.
​
​
=begin
# 0. Pseudocode
​
# What is the input? 
# - An array of numbers or strings
# What is the output? (i.e. What should the code return?)
# - An array that contains the number of string that appears most frequently
# What are the steps needed to solve the problem?
1) Turn the initial array into a hash, in doing so we need to iterate through the array to count how many times each array object appears and assign that number to the value for the hash
2) Figure out what the highest value is in the hash
3) Return the key with the highest value in an array  
​
=end
​
​
# 1. Initial Solution
​
def mode(array)
	counts = Hash.new 0
	# We now have an empty hash 
	array.each do |x| 
	counts[x]+=1 
	end
	# {a=>1, b=>2}
	 # We have an empty array we want to fill with the highest key(s)
	new_array = []
  counts.select do |key, value|
    if value==counts.values.max
    new_array << key
    end
  end
  return new_array
end
​


# 3. Refactored Solution
def mode(array)
	counts = Hash.new 0
	array.each do |x|
	counts[x]+=1
	end
	 new_array = counts.select {|x,y| y==counts.values.max}.keys
  return new_array
end
​
# 4. Reflection