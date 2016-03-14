# Pad an Array

# I worked on this challenge with: Anna Lansfjord

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? The input is an array, a integer as minimum size, and an optional argument to pad the array with.
# What is the output? (i.e. What should the code return?) The code should return a new array padded with the pad value up to the minimum size. If the array is the minimum size or less it should return the array.
# What are the steps needed to solve the problem? If the array is less than or equal to the minimum size, retrurn the array. If it's larger, figure out the difference between the two sizes and add the value the amount of the difference to the array. For the non-destructive solution, make sure to create a new array.


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
 if min_size <= array.length
   return array
 else
   difference = min_size - array.length
   difference.times do
     array.push (value)
   end
 end
 return array
end

pad!([1,2,3], 5)

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  new_array.concat(array)
    if min_size <= array.length
      return new_array
   else
      difference = min_size - array.length
      difference.times do
      new_array.push(value)
    end      
	end 
  return new_array
end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
 if min_size <= array.length
   return array
 else
 	new_array = (Array.new((min_size - array.length), value))
 	array.concat(new_array)
   end
end

def pad(array, min_size, value = nil) #non-destructive
	if min_size <= array.length
	  return array.clone
	  	#.clone returns a clone of the original array
	  	#.dup returns a duplicate of the original array
	  	#without this rspec was failing, though I'm not entirely sure what the difference b/w the two are
	else
	 	return array.clone + Array.new((min_size - array.length), value)
	end
end
# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
I think we were, though I think it's very helpful to have someone to talk through the different steps with in case anything is unsure or confusing.


Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
We initially faltered on how to make the non-destructive method before realizing we had to make a new array, but otherwise it went smoothly.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
  Our initial solution was successful in passing the tests.

When you refactored, did you find any existing methods in Ruby to clean up your code?
I found clone and dup, which created clones or duplicates of the original array. This was useful in changing data to create a new array in a non-destructive fashion.

How readable is your solution? Did you and your pair choose descriptive variable names?
I think the variable names are descriptive enough and that the code is laid out well enough to be easily read. It's understandable and if come across by someone with an idea of what I was trying to do, it would be easy to figure out how it works.

What is the difference between destructive and non-destructive methods in your own words?
Non-destructive methods return a new obejct, in this case an array, without changing the original array. If I was to call this method and pad 5, it would return a new array, and if I called it again it would return that same array since I am still ading 5 to the original each time. A destructive method permanently changes the original object. If I add 5 to my array, each next time I call the method another 5 will be permanently added. This is useful if later in the code it's important that those changes remain.
=end