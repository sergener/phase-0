

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
	#write a method that we input different items into and it puts them into a hash
  # define as a global variable with hash default 1
  # split string into an array
  # loop over the array and add each element to the hash
  # The default quantity of each item should be 1
  # print the list to the console [can you use one of your other methods here?]
# output: The final product will be a hash and print the contents to console.

# Method to add an item to a list
# input: item name and optional quantity(1)
# steps: update the global variable with the item and quantity
# output: print updated hash to console

# Method to remove an item from the list
# input: The item to be deleted
# steps: Use .delete to remove the key
# output: Deleted item and quantity (test)

# Method to update the quantity of an item
# input: The item to be updated
# steps: Add the new quantity to change the value
# output: Return the item and the new quantity

# Method to print a list and make it look pretty
# input: Call the method 
# steps: Loop over each element and list them in a readable format
# output: Entire list

$shopping_list = Hash.new {|hash, key| hash[key] = 1 }

def create_list(list)
 list_array = list.split(" ")
 list_array.each {|item| $shopping_list[item]}
 print_list
end

def add_item(item, quantity)
 $shopping_list[item] = quantity
end

def remove_item(item)
 $shopping_list.delete(item)
end

def update_quantity(item, quantity)
 $shopping_list[item] = quantity
end

def print_list
 $shopping_list.each do |key, value|
 	puts "item: #{key} qty: #{value}"
 end
end