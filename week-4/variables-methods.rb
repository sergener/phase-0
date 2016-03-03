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
