-What does puts do?
puts writes out whatever comes after it. 

-What is an integer? What is a float?
An integer is a number without decimal points, and numbers with decimal points are floats. Floats is a shortened version of "floating-point numbers".
Most programs work only with integers, while floats are more commonly used for academic purposes, audio and video.

-What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Float division will return results in floats while integer division will return results in integers. This is most noticable when dividing numbers that don't return integers. 9/2, for example, would be 4.5 if divided with floats (9.0/2.0). Divided as integers (9/2) will return an answer that rounded down to the integer. In this case the answer will be "4".

```ruby

puts 365*24
puts 10*(365*(24*60))

```