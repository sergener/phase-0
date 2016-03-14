=begin
Input: a .txt file with a list of names.
Output: arrays that return each name as a string in groups of 5, 4 or 3 names.

1. Create a file with the Fiery Skippers name.
2. Link that file to the code and make it an array.
3. Break the array into smaller random arrays of 4 names each.
4. If the final array has less than three names:
	Take one name at a time and add it to another array
5. Return the arrays.
	
=end



skippers = File.readlines("fiery-skippers.txt")

def accountability_groups(array)
	array.strip
	p acct_grps_array = array.shuffle.each_slice(5).to_a
end
#.strip will strip blank

accountability_groups(skippers)

=begin
	
What was the most interesting and most difficult part of this challenge?


Do you feel you are improving in your ability to write pseudocode and break the problem down?
I do feel like I can better break the problem down and understand how to cut it up into managable chunks for Ruby, though I don't always know how to get the code to do what my pseudocode is set up for. Having the problem broken down does make it easier to look for solutions and ask for specific help.

Was your approach for automating this task a good solution? What could have made it even better?
I think I would prefer to put the groups in hashes so each is explicitely labelled "acct group 1, acct group 2, etc." This would also allow me to give each person a number within the group.

What data structure did you decide to store the accountability groups in and why?

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

=end