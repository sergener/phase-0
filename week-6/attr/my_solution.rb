#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData

attr_accessor :name

	def initialize(name)
		@name = name
	end

end


class Greetings
	attr_reader :person

	def initialize(name="Sibel")
		@person = NameData.new(name)
	end

	def greeting
		puts "Hello #{@person.name}! How wonderful to see you today."
	end
end

greet = Greetings.new
p greet.greeting

greet_adam = Greetings.new("Adam")
p greet_adam.greeting




# Reflection
=begin
Release 1
What are these methods doing?
initialize assigns values for @age, @name, and @occupation.
print_info puts those instance variables to the screen.
what_is_age returns the value of @age
change_my_age=(new_age) gives a new value to @age
what_is_name returns the value of @name
change_my_name=(new_name) gives a new value to @name
what_is_occupation returns the value of @occupation
change_my_age=(new_occupation) gives a new value to @occupation

How are they modifying or returning the value of instance variables?
The instance variables are modified within methods that give them new values. They are reurned with independent methods returning the values.

Release 2
What changed between the last release and this release? What was replaced?
This release added attr_reader :age. Because of this, the method what_is_age is no longer needed, as age can be called by p instance_of_profile.age

Is this code simpler than the last?
This code is simpler, or at least easier to read, since there is one less method.

Release 3
What changed between the last release and this release? What was replaced?
The method change_my_age was removed and replaced by attr_writer :age

Is this code simpler than the last?
Again, this code is easier to read as it's been shortened.

Release 6
What is a reader method?
A reader method exposed the value of an instance variable.

What is a writer method?
A writer method changes the value of the instance variable to a new value passed in as an argument.

What do the attr methods do for you?
Instead of having to write independent methods to return or change variables, attr methods allow you to compress that code into a single line.

Should you always use an accessor to cover your bases? Why or why not?
Accessor methods are powerful in that they allow you to access instance variables outside of their given class. This can be problematic because they can then be changed outside of that class. 

What is confusing to you about these methods?
I think I understand these methods, though I still don't fully understand how symbols work.

=end