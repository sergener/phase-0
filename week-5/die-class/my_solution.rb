# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: A number of sides to roll the die with.
# Output: A random number within the bounds of the number of sides.
# Steps: initialize: creates an object with a number of sides. Return argument error if sides are less than 1
# Sides: Return number of sides on the die object.
# Roll: returns a random number between 1 and number of sides. 


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides <1
    	raise ArgumentError.new("Needs at least 1 side")
    end
    @sides = sides.to_i
  end

  def sides
    return @sides
  end

  def roll
    loop do |number|
    	number = @sides
    	return rand(number) + 1
    end	
  end
end



# 3. Refactored Solution

class Die
  def initialize(sides)
    	raise ArgumentError.new("Needs at least 1 side") if sides < 1
    end
    @sides = sides.to_i
  end

  def sides
    return @sides
  end

  def roll
    rand(sides)
  end
end





# 4. Reflection
=begin
	
What is an ArgumentError and why would you use one?
An ArgumentError is an error raised where there are the wrong number of arguments raised. It's a way to explain why code isn't working and how to correct the problem.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I hadn't had a chance to use rand before despite seeing it in reading. Rand will take a range or max and return a random number. 

What is a Ruby class?
A Ruby class is a blueprint for an object; classes define clusters of behaviors or functionality that objects are instances of.

Why would you use a Ruby class?
There are many built-in classes, such as Fixnum, String, Array, etc. This allows Ruby to function: it would be hard to create a a string without it understanding what it does. The class essentially making an object, a process known as instantiation, though objects can change thereafter due to modification with methods and behaviors beyond the defined class.
Beyond built-in classes, classes can be written or modified to create specific ways for objects to function.

What is the difference between a local variable and an instance variable?
Local variables are variables defined within a method; they are not available outside that method. They begin with lowercase letters or underscores.
Instance variable are available across methods for any instance or object within their defined class. Their value is nil until initialized. They begin with @.

Where can an instance variable be used?
Instance variables are useful when info is needed across methods within a class. For example, in this Die class we needed access to the the number of sides within multiple methods so an instance variable was necessary. It can also be changed to another number in another instance of being run.
	
I actually found this challenge surprisingly easy after struggling a lot in other challenges this week, and it helped boost my confidence. I'd tended to overly complicate the other challenges and stuck to keeping this one simple. The only real issue is when I couldn't raise an ArgumentError before realizing I'd misspelt argument, which is a reminder to spellcheck carefully.
=end