# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: .

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an array of numbers
# Output: the sum of all the numbers
# Steps to solve the problem.
=begin
	def method_total(numbers)
	take each number and add together
		use .each to go through all the numbers, each
		defined as |num|
		add each number to each other
			take the first sum and add it to the next number
			and repeat w next number until done
	return the sum	
=end

# 1. total initial solution
def total(numbers)
	sum = 0
	numbers.each do |num| 
		sum = sum+num
	end
	p sum
end

# 3. total refactored solution

def total(numbers)
	numbers.inject(0) {|sum, x| sum + x}
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of strings
# Output: A sentence made up of those strings
# Steps to solve the problem.
=begin 
def sentence_maker(sentence)
	take each word and add them one after another to
	a sentence.

	We have to make sure each word is a string. 

	We have words that we want to put into a sentence. We want
	first word to be capitalized, and each word to have a space
	in between. It ends with a period.

	We have to take each word from the array in order.

	.last gets last variable in array
=end

# 5. sentence_maker initial solution

def sentence_maker(array)
	sentence = array[0].capitalize
	i = 1
	while i < array.length
		sentence = sentence + " " + array[i].to_s
		i += 1
	end
	sentence = sentence + "."
	p sentence

end

# 6. sentence_maker refactored solution
=begin def sentence_maker(array)
	string=array.join (" ")
	string.capitalize!
	string << "."
end
=end

