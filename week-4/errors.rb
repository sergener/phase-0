# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#{}"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
end
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

south_park = "tv show"

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

cartman()

# 1. What is the line number where the error occurs?
#The error is on line 50
# 2. What is the type of error message?
#This is a oMethodError.
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.