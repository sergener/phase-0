puts "What's your first name?"
first_name = gets.chomp
puts "What's your middle name?"
middle_name = gets.chomp
puts "What's your last name?"
last_name = gets.chomp
puts "Nice to meet you, " + first_name.capitalize + " " +middle_name.capitalize + " " +last_name.capitalize + "."


puts "What's your favorite number?"
fave_num = gets.chomp
puts "Don't you think " + (fave_num.to_i + 1).to_s + " is a bigger and better number?"


=begin

Links:

Defining Methods
https://github.com/sergener/phase-0/blob/master/week-4/define-method/my_solution.rb

Return a Formatted Address:
https://github.com/sergener/phase-0/blob/master/week-4/address/my_solution.rb

Defining Math Methods
https://github.com/sergener/phase-0/blob/master/week-4/math/my_solution.rb

How do you define a method?
	A method is a set of expressions that returns a value. It’s important to remember
	that every method is being done by an object.	
How do you define a local variable? What is the difference between a local variable and a method?
	Local variables are variables defined within a method. They can only be called within 
	that method, and if you try to call them outside they won't return anything. This is useful as 
	it means that local variables within the same program but within methods can be named the same
	thing without causing any problems.
How do you run a ruby program from the command line?
	Type in ruby [file name]
How do you run an RSpec file from the command line
	Type in rspec [file name]
What was confusing about this material? What made sense?
	I found most of this material easy to understand. I completed the codecademy course in Ruby
	before starting DBC, so I thought it was a good reminder of everything I learned. I also
	thought it was good to read more extensive definitions in the textbooks to really cement that 
	understanding.


=end