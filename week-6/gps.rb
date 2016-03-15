# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

#New features to implement/refactor
#1. Create simpler way to raise ArgumentError
#2. 


def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

# Defining a method which takes two arguments item_to_make and num_of_ingredients it takes to make the item.
# Defining a HASH called library with the KEY (item_to_make) and VALUE (num_of_ingredients).
# Create a var called error_counter and set it EQUAL to 3


  if library.has_key?(item_to_make) == false
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

# Iterate through the HASH library creating a IF loop
# IF the food does not match the item_to_make argument then we ADD -1 from the var error_counter
  #Create a simpler error_counter
  #Instead of creating a counter, use has_key
  #IF library.has_key?(item_to_make) == false
  #raise ArgumentError
  # if error_counter > 0
  #   raise ArgumentError.new("#{item_to_make} is not a valid input")
  # end
# IF error_counter is greater than 0 then RAISE an Argument Error

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
# Create serving_size var gives us the values associated to the key(item_to_make) set a default value of 0
# Create remaining_ingredients var which is the modulus of the num_of_ingredients and serving_size
  #look up values_at
  #there is an easier way to get the value in a hash

  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  elsif % 7 == 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Make pies with remaining ingredients"
      else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Make pies with remaining ingredients"
  end
end
# CASE statement for remaining_ingredients
  # When num_of_ingredients modulus serving_size remainder is 0 then return first statement
  # ELSE return 2nd statement which includes the remaining ingredients and also a suggested baking item
#Create a loop
#IF remaining_ingredients % 7 == 0 make pies
#ELSIF remaining_ingredients % 5 == 0 make cakes
#ELSE make cookies

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 17)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)
#PRINT and RETURN the calc which use the arguments num_of_ingredients and serving_size

#  Reflection