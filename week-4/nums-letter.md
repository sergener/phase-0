##What does puts do?
puts returns the argument that follows it without printing it out. 

##What is an integer? What is a float?
An integer is a number without decimal points, and numbers with decimal points are floats. Floats is a shortened version of "floating-point numbers".
Most programs work only with integers, while floats are more commonly used for academic purposes, audio and video.

##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Float division will return results in floats while integer division will return results in integers. This is most noticable when dividing numbers that don't return integers. 9/2, for example, would be 4.5 if divided with floats (9.0/2.0). Divided as integers (9/2) will return an answer that rounded down to the integer. In this case the answer will be "4".

##How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby is programmed to easily handle basic math. Addition is completed with a + between integers or floats, subtraction with -, multiplication with *, and division with /. It will return integers or floats based on what the original numbers are.

##What are strings? Why and when would you use them?

Strings are groups of letters kept together between either 'single quotes' or "double quotes". They're used when programmers need to use groups of letters or symbols for whatever reason; to print sentences, to track data, etc.

##What are local variables? Why and when would you use them?

Local variables are variables defined within a method. They can only be called within that method, and if you try to call them outside they won't return anything. This is useful as it means that local variables within the same program but within methods can be named the same thing without causing any problems.

##How was this challenge? Did you get a good review of some of the basics?

This challenge was a good review of the basics and also allowed me to cement some of what I'd learned in a more concrete way by doing the readings and research.

-Hours in a year

```ruby

puts 365*24
puts 10*(365*(24*60))

```

-Months in a decade

```ruby

puts 10*(365*(24*60))

```

-Defining Variables

https://github.com/sergener/phase-0/blob/master/week-4/defining-variables.rb

-Simple String Methods

https://github.com/sergener/phase-0/blob/master/week-4/simple-string.rb

-Local Variables and Basic Arithmetical Operations

https://github.com/sergener/phase-0/blob/master/week-4/basic-math.rb
