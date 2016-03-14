# Calculate the mode Pairing Challenge
​
# I worked on this challenge with: Chand Nirankari
​
# I spent 4 hours on this challenge.
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

=begin
Which data structure did you and your pair decide to implement and why?
We decided to begin by turning the array into a hash to be able to have two necessary kinds of data: the objects in the array, and an integer representing the amount of times that object appeared. We could then use that value, the integer, to return a new array with the correct data.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
It took a while to get our pseudocode to be understandable; we wrote out thoughts of how to write the code on several pages of paper before being able to narrow it down to a specific pseudocode we would try to implement. Though it was difficult and frustrating to get it right, it was also helpful in learning where we were complicating things or missing important factors.

What issues/successes did you run into when translating your pseudocode to code?
Things that were understandable pseudocode didn't always provide immediately apparent methods or solutions for us. It would probably helped to have broken it down more. For example: "Figure out what the highest value is in the hash" could be broken down into potential methods to look up.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We found .keys, which returns keys from a hash.
	
=end