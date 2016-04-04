#Fizzbuzz

#input: an array
#output: an altered array that replaces appropriate integers with "fizz" "buzz" and "fizzbuzz"
#steps:
#1. define the method super_fuzzbuzz with an argument of an array
#2. destructively iterate over the array to change it
#3. create a loop:
# => if the number in the array is divisible by both 5 and 3, replace with "fizzbuzz"
# => if it's divisible by 3 replace with "fizz"
# => if it's divisible by 5 replace with "buzz"
# => otherwise it remains the number
#4. return the new array


def super_fizzbuzz(array)
	array.map! do |number|
		if (number % 5 == 0 && number % 3 == 0)
			number = "fizzbuzz"
		elsif number % 3 == 0
			number = "fizz"
		elsif number % 5 == 0
			number = "buzz"
		else
			number = number
		end
	end
	return array
end

p super_fizzbuzz([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])



#What concepts did you review or learn in this challenge?
#This challenge was a good review on how to iterate arrays and also a reminder
#in how to write destructive methods.

#What is still confusing to you about Ruby?
#The logic behind Ruby doesn't really confuse me so much as I still need practice to 
#use the best syntax and not make simple mistakes.

#What are you going to study to get more prepared for Phase 1?
#I have a long list of practice problems that I intend to solve in Ruby and hopefully
#also in JavaScript to help get the basics down.
