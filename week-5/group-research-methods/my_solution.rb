# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 2
#Create a my_array_modification_method! that takes an array and number to be added to all internal numbers.
#(Because you can never have too many pets!) It should permanently alter the original array and hash. For example:
=begin
things to modify: add to the integers within source array.
take integers within source array and replace with new integers by adding to them
source is source array
thing_to_modify is integer to add
each integer will be changed seperately when this method is called
return a new array with new integers
=end


def my_array_modification_method!(source, thing_to_modify)
  source.map! do |i|
    if i.is_a?(Integer)
    i += thing_to_modify
    else
    i = i
    end
  end
end



#refactored:
#def my_array_modification_method!(source, thing_to_modify)
#  source.map! {|i| i.is_a?(Integer) ? i + thing_to_modify :i}
#end

def my_hash_modification_method!(source, thing_to_modify)
  source.each {|key, value| source[key] = value + thing_to_modify}
end



# Identify and describe the Ruby method(s) you implemented.
#.map! is similar to .each in that it iterates over each object in an array. However.map
#can be used to create a new array based on the original array, but with the values modified
#by the supplied block.
#Also important to note is that if you don't make explicit it needs to return a value, it will
#return "nil".
#There's no map method for use on hashes, so I used .each and created a new hash with the value
#modified.

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#