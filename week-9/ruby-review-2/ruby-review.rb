# Drawer Debugger

# I worked on this challenge with: Gabriel Zurita.
# I spent 1 hours on this challenge.

# Original Code

=begin
class Drawer

  attr_reader :contents

# Are there any more methods needed in this class?

def initialize
  @contents = []
  @open = true
end

def open
  @open = true
end

def close
  @open = false
end

def add_item(item)
  @contents << item
end

def remove_item(item = @contents.pop) #what is `#pop` doing?
  #pop is targeting the last object in the array
  @contents.delete(item)
end

def dump  # what should this method return?
  puts "Your drawer is empty."
  @contents = [] #@contents.clear works as well
end

def view_contents
  puts "The drawer contains:"
  @contents.each {|silverware| puts "- " + silverware.type }
end

end

class Silverware
  attr_reader :type

# Are there any more methods needed in this class?

def initialize(type, clean = true)
  @type = type
  @clean = clean
end

def eat
  puts "eating with the #{type}"
  @clean = false
end
  
def clean
  if @clean != true
    false
  else true
  end
end
  
def clean_silverware
  @clean = true
end
  
end

=end

# Refactored

class Drawer

  attr_reader :contents

# Are there any more methods needed in this class?

def initialize
  @contents = []
  @open = true
end

def open
  @open = true
end

def close
  @open = false
end

def add_item(item)
  @contents << item
end

def remove_item(item = @contents.pop) #what is `#pop` doing?
  #pop is targeting the last object in the array
  @contents.delete(item)
end

def dump  # what should this method return?
  puts "Your drawer is empty."
#   used .clear to empty array instead of setting array to []
  @contents.clear
end

def view_contents
  puts "The drawer contains:"
  @contents.each {|silverware| puts "- " + silverware.type }
end

end

class Silverware
  attr_reader :type

# Are there any more methods needed in this class?

def initialize(type) #removed clean argument
  @type = type
  @clean = true
end

def eat
  puts "eating with the #{type}"
  @clean = false
end
  
def clean #checking if silverware is clean or not and returning true or false
  if @clean == true
    true
  else false
  end
end
  
def clean_silverware
  @clean = true
end
  
end


# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
silverware_drawer.view_contents

# What will you need here in order to remove a spoon? You may modify the driver code for this error.
spoon = Silverware.new("spoon") #created new variable spoon
silverware_drawer.add_item(spoon) #adding spoon to drawer
raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
removed_spoon = silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?
#Since spoon wasn't in the drawer it couldn't be removed
removed_spoon.eat
puts removed_spoon.clean #=> this should be false

# DRIVER TESTS GO BELOW THIS LINE






# Reflection