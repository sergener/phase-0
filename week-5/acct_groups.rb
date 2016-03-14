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
	array.collect do |string|
		string.strip
	return acct_grps_array = array.shuffle.each_slice(5).to_a
end
end
#.strip will strip blank

p accountability_groups(skippers)

=begin

** NOTE: while working on this challenge I had to deal with some personal crises and didn't complete it at the level I wanted to. I'm going to come back to it this week, but for my peer reviewer: this is why it isn't totally complete.
	
What was the most interesting and most difficult part of this challenge?
I think it is really easy to get too involved when planning out how to solve this challenge. MY initial idea had a lot of the listed "added complexities" and when looking at it I realized I should really start somewhere easier. 


Do you feel you are improving in your ability to write pseudocode and break the problem down?
I'm writing my pseudocode on paper so I can doodle things out, put in arrows, inject things more easily, etc. It's been really helpful in helping work through my ideas to reach a more solid block of easily understandable pseudocode.

I do feel like I can better break the problem down and understand how to cut it up into managable chunks for Ruby, though I don't always know how to get the code to do what my pseudocode is set up for. Having the problem broken down does make it easier to look for solutions and ask for specific help.

Was your approach for automating this task a good solution? What could have made it even better?
I came up with my pseudocode, then decided to make this challenge as initially easy as possible when I realized that I could break up acct groups from a list of 64 names without worrying that I would get less than three in any group.

I think I would prefer to put the groups in hashes so each is explicitely labelled "acct group 1, acct group 2, etc." This would also allow me to give each person a number within the group.

What data structure did you decide to store the accountability groups in and why?
I decided to use arrays because I felt like it was the easiest initial solution. A hash, I felt, would add an extra step to get to where I wanted it to be.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I learned a lot of new methods! .shuffle randomized the order of the array.
I also found .strip to remove whitespace, but didn't manage to make it work correctly. 

=end