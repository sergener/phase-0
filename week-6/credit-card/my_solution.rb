# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: credit card number (string of integers)
# Output: true or false (boolean) depending on if CC is valid
# Steps:
#  Get input
#  Check to see if its 16 digits
#Unless it is 16 digits, raise argument error
# IF it's 16 digits then break it up in an array of integers
# Double every even digit starting from the right
# IF a number has more than one digit break up into two
# Add every single digit together
# IF the total number is divisible by ten
# Valid credit card number is true
# ELSE is false




class CreditCard

  
def initialize(card_number)
  if card_number.to_s.length != 16
    raise ArgumentError.new ("Please enter valid card number")
  else
    @card_number = card_number
  end
end

def check_card
  card_array = @card_number.to_s.each_char.map.each { |number|
   number.to_i}

  position= -2
    while position >= -16
        card_array[position]= card_array[position]*2
      position -= 2
    end

  card_array_joined = Integer(card_array.join, 10)#@card_array.join.to_i
   final_array = card_array_joined.to_s.each_char.map.each { |number|
   number.to_i}

 sum = 0
 final_array.each { |number| sum += number}
    if sum % 10 == 0
      return true
    else
      return false
    end
end
end


# Reflection
=begin
  
What was the most difficult part of this challenge for you and your pair?
We got really stuck on instance variables. It took us a while to realize that instance variables can only be defined in the initialization method; we tried to define final_array as an instance variable and make everything from sum = 0 down into it's own method so it would be easier to read but were unable to. We really struggled when we kept returning nil/.each wasn't working.

What new methods did you find to help you when you refactored?
I didn't use it, but I found each_index. Our initial idea was to take the even index positions of card_array and double them, but .even? wasn't working, and I thought about targeting the even index numbers more specifically with that method.

What concepts or learnings were you able to solidify in this challenge?
Overall the entire process of writing the code made more sense. I understood more quickly what was missing from the code that I needed to add, and was more quick to run the code to look for errors to correct.
  
=end