# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


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