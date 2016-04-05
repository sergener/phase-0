# Reverse Words


# I worked on this challenge by myself.
# This challenge took me .5 hours.

# Pseudocode
=begin
input: A string
Output: that string with each individual word reversed
Steps:
	Create an empty array
	At each " " in the string split the string and push it into the array
	Create a new array to reverse each item in the array
	Join new array with a " " between each object into a new variable
	Return that new variable
=end

# Initial Solution
=begin
def reverse_words(string)
	array = string.split(" ")
	reverse_array = array.map {|word| word.reverse}
	p reverse_array
	new_string = reverse_array.join(" ")
	new_string
end
=end
# Refactored Solution

def reverse_words(string)
	array = string.split
	reverse_array = array.map {|word| word.reverse}
	p reverse_array
	new_string = reverse_array.join(" ")
	new_string
end



# Reflection