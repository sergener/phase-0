# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: A random string from the array.
# Steps: 
#initialize: check if array is empty. If it is, raise ArgumentError.
#If initialize(labels) has at least 1 string in the array, return @labels
#Sides: Return number of sides of die object(number of strings in array)
#Roll: return a random string from the array


# Initial Solution

class Die
  def initialize(labels)
  	if labels.empty?
  		raise ArgumentError.new("Needs at least 1 side")
  	end
  	@labels = labels
  end

  def sides
  	return @labels.length
  end

  def roll
  	return @labels.sample
  	#.sample returns a random object from the array. Alternatively: return @labels.shuffle[0]
  end
end



# Refactored Solution








# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
While the concept of how to write this code was fundamentally and structurally the same, an array of strings provided some differences from a single number. 

In initialize, instead of just checking that the number was larger than 0 I had to check if the array had anything in it: a slightly different bit of code due to the use of the method empty? but still very similar. The rest of the code was the same.

For sides, I couldn't just return the array the way I had simply returned the entered integer for the first die class. I had to count the objects in the array to be able to get an integer, which was straightforward by using .length.

Finally, I had initially created a loop for my first die class to get a random number. I used .shuffle last week in my accountability group challenge to get a random selection of strings, and remembered looking at .sample as way to get a single random string. I used .sample for this but also tested .shuffle, which worked but was unnecessarily bulkier.


What does this exercise teach you about making code that is easily changeable or modifiable? 
It was really useful to reference my first die class challenge. The pseudocode is basically the same, and it was easier to modify the first code instead of completely writing new code. Overall, I think it's useful to make code as simple and understandable as possible so it can be modified like this, and I can see that refactoring it would make it better for this.

What new methods did you learn when working on this challenge, if any?
I hadn't used .sample before, an array method that selects and returns a random object from the array.

What concepts about classes were you able to solidify in this challenge?
I'm deepening my understanding of how to write code correctly and also more deeply understanding how Ruby reads that code. I'm starting to feel more settled and happy that my code will work on the first or second try with minial errors because of this, something that didn't happen last week and was painful and time consuming to correct.

