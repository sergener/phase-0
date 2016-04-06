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
	new_string = reverse_array.join(" ")
	new_string
end
=end

# Refactored Solution

def reverse_words(string)
	array = string.split
	reverse_array = array.map {|word| word.reverse}
	new_string = reverse_array.join(" ")
	new_string
end

# Reflection
=begin
Pairing challenge: Drawer debugger
	https://github.com/sergener/phase-0/blob/master/week-9/ruby-review-2/ruby-review.rb

What concepts did you review in this challenge?
I reviewed some of the ways to use methods that I'd somewhat forgotten while doing JS the
past few weeks. It was a good refresher.
For the pairing challenge, it was good to practice debugging again, especially somewhat
more confusing errors that didn't include the exact place where the error was appearing.

What is still confusing to you about Ruby?
I don't really feel confused about Ruby so much as I feel like I just need to keep
practicing to feel as if I have a solid grasp on the syntax and common methods.

What are you going to study to get more prepared for Phase 1?
I have a list of practice problems that will help cement my understanding of some 
basic Ruby methods. I also want to do many of the Ruby Review problems.

=end