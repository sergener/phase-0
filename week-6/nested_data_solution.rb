# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================
# pseudocode: array [1[1[2[0]]]]
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 2
# ============================================================
#pseudocode: hash[outer:[inner:["almost"[3]]]]
#p hash[outer:][inner:]["almost"][3]
p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================
# pseudocode: nested_data[:array[1[:hash]]]
p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
#pseudocode:
#output: add 5 to each element within each array
#two nested arrays within the outer array
#iterate over outermost array += 5
#IF is_a?(Array) iterate over array +=5 end
#.map!

number_array.map!{|element|
  if (element.is_a?(Integer))
     element += 5
  else
     element.map!{|number| number +=5}
  end
  }

p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
#pseudocode:
#input: nested array of strings
#output: add "ly" to each element within each array
#two nested arrays within the outer array
#iterate over outermost array + "ly"
#IF is_a?(Array) iterate over array + "ly" end
#.map!

startup_names.map! {|name|
   if (name.is_a?(String))
     name + 'ly'
   else
     name.map! {|subname| if (subname.is_a?(String))
       subname + 'ly'
       else
        subname.map! {|x| x + "ly"}
       end
     }
   end
     }

startup_name.each {|n|
  while n.is_a?(Array)
    }



p startup_names



#{|name|
#loop while name.is_a?(Array)
#  {iterate through if elements are strings
#  else return to if statement}
#else name << "ly"

=begin
	
What are some general rules you can apply to nested arrays?
There are a few general rules. Counting where the nested array is within the parent arrays gives you a better idea of how deep it is and how to target it within the structure.

What are some ways you can iterate over nested arrays?
Remember that you have to iterate over each nested array independently if you using loops. You can do this by repeating the code used for the amount of arrays that are nested. There are probably easier methods to target any number of nested arrays, so it involves further research.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
I reused is_a? to see if the object within the array was a nested array. I was person 2 in the group challenge last week and had used .map! to destructively interate through arrays, so this was a good chance to use it again as well.
	
end
