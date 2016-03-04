# Analyze the Errors

# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# --- error -------------------------------------------------------

#{}"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end
#
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
#The error says it happens on line 170.
# 3. What is the type of error message?
#The error is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
#There is an unexpected end-of-input when the method was expecting a keyword end.
# 5. Where is the error in the code?
#The arrow point to the end of the last line of the .rb file.
# 6. Why did the interpreter give you this error?
#Both the method and the while loop need an end; without both ruby will run until the end looking for the second end, which is why the error is on the last line. 

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
#Line 35.
# 2. What is the type of error message?
#The error is a NoMethodError.
# 3. What additional information does the interpreter provide about this type of error?
#There is an undefined variable or method for 'south_park'
# 4. Where is the error in the code?
#south_park is an undefined object. 
# 5. Why did the interpreter give you this error?
#Ruby isn't sure if south_park is a variable or method and is unsure how to run it.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#The error is on line 50
# 2. What is the type of error message?
#This is a NoMethodError.
# 3. What additional information does the interpreter provide about this type of error?
#It is an undefined method.
# 4. Where is the error in the code?
#'cartman' is undefined.
# 5. Why did the interpreter give you this error?
#cartman() is recognized as a method, but needs a def before it to be read properly.

# --- error -------------------------------------------------------

#def cartmans_phrase 
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#The error is on line 65 and line 69.
# 2. What is the type of error message?
#It is an ArgumentError.
# 3. What additional information does the interpreter provide about this type of error?
#There are the wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
#Right after 'cartmans_phrase'
# 5. Why did the interpreter give you this error?
#There are no arguments listed after cartmans-phrase when ruby is expecting there to be one, based on the one it sees when the method is called on line 69.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
#Line 84 and line 88.
# 2. What is the type of error message?
#This is an ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#There is the wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
#The error is after 'cartman_says'
# 5. Why did the interpreter give you this error?
#This is the opposite of the previous error; because there is no argument after the method is called, ruby is saying there are too many arguments when the method is defined. This can be fixed by putting an argument after cartman_says on line 88.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#The error is on lines 105 and 109.
# 2. What is the type of error message?
#It is an ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#There is the wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
#It is right after cartmans_lie
# 5. Why did the interpreter give you this error?
#The method is defined as having two arguments, but there is only one when the method is called on line 109.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#The error is on line 124.
# 2. What is the type of error message?
#This is a TypeError
# 3. What additional information does the interpreter provide about this type of error?
#String can't be coerced into Fixnum.
# 4. Where is the error in the code?
#Between the * and the string.
# 5. Why did the interpreter give you this error?
#The interpretor is trying to multiply the integer 5 by the string, which it can't do because it's a not a number. If it was string * integer it would work, as it's the sting printed 5 times.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#The error is on line 139
# 2. What is the type of error message?
#This is a ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#A number is being divided by 0
# 4. Where is the error in the code?
#The error happends after the / sign.
# 5. Why did the interpreter give you this error?
#Integers can't be divided by zero.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#Line 155
# 2. What is the type of error message?
#This is a LoadError
# 3. What additional information does the interpreter provide about this type of error?
#It says the file can't be loaded and then writes out where it's trying to load from.
# 4. Where is the error in the code?
#The error is after require_relative.
# 5. Why did the interpreter give you this error?
#This is a relative path, and I don't have a file called cartmans_essay.md stored in the folder the program is looking in.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?
	I think I struggled most with this one:
		#def cartmans_phrase 
		#  puts "I'm not fat; I'm big-boned!"
		#end

		#cartmans_phrase('I hate Kyle')
	though I think that had more to do with the fact that I couldn't figure out the method was trying to do as
	opposed to me not understanding that the method didn't have an argument.

How did you figure out what the issue with the error was?
	Ruby provides a lot of information to help with debugging, so the line number allowed me to look at the code and read it over.
	Then I would look at the error message and where the interpreter pointed out the error was triggered so I could figure out
	what needs to be fixed for the code to run smoothly. 

Were you able to determine why each error message happened based on the code? 
	I was able to figure out why error messages occurred. I watched the additional debuggin video before beginning, which helped,
	and also found that looking up the error message was very helpful to easily understanding how a bug could be fixed in code.

When you encounter errors in your future code, what process will you follow to help you debug?
	I think, as shown by the first error message that ran through the entire program looking for an "end", it is important
	to frequently run programs while coding to check for errors. I could see if it was a long program it would be
	very frustrating to pinpoint that kind of error.
=end
