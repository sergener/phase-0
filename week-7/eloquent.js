// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var hello = "hello";
console.log(hello.length);


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//Looping a triangle

for (var hash = "#";
	hash.length <= 7;
	hash += "#")
	console.log(hash)

// FizzBuzz
var number = 1 
while (number <=100){
	if(number % 3 ==0 && number % 5 ==0)
		console.log("FizzBuzz")
	else if(number % 3 == 0)
		console.log("Fizz");
	else if (number % 5 == 0)
		console.log("Buzz");
	else
		console.log(number);
	number += 1
}


// Functions

// Complete the `minimum` exercise.

var minimum = function(x, y) {
	if (x < y) {
		return x;
	}
	else {
		return y;
	}
}

console.log(minimum(1, 10))


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Sibel",
	age: 26,
	foods: ["clementines", "tacos", "manti"],
	quirk: "recently impulse purchased a Totoro onsie",
}

//Reflection
//Did you learn anything new about JavaScript or programming in general?
//I think this was a good overview of programming and interesting to compare to reading in week 1 to see how much I’ve learned, but overall I didn’t really learn anything new.

//Are there any concepts you feel uncomfortable with?
//I’m worried about the major differences between the two languages and how it will confuse me, so we will see how that goes.

//Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
//The way arithmetic is handled is mostly similar between the two languages; + - * / and % all return the same arithmetic functions. However, a major difference is that JavaScript does not seem to differentiate between integers and floats, while in Ruby they are fundamentally different in how the language reads them.
//Boolean values are the same between the two languages, as well as the use of && and || to test for Boolean values.
//A very different thing between languages is how the two react to taking arguments and printing errors. Ruby is more strict; for example, if there aren’t enough arguments or too many arguments if will stop running and return an argument error. JavaScript will try to accept and run any program, even when the program doesn’t make sense. It will allow as many or as little arguments as you give it. This makes the errors JavaScript prints much more difficult to interpret.

//What is an expression?
//An expression is a fragment of code that produces a value. This can be a literally written value, or between parentheses. A binary operator applied to two expression or a unary applied to one is also an expression.

//What is the purpose of semicolons in JavaScript? Are they always required?
//Semicolons are used to end a program statement. Semicolons are not always needed, but the rules for this are complex so it’s easier to just use a semicolon whenever it could be needed.

//What causes a variable to return undefined?
//If the variable is empty, it will return undefined.

//What does console.log do and when would you use it? What Ruby method(s) is this similar to?
//console.log is a function that writes out its arguments to some text output devices. In browsers it will land in the JavaScript console, and therefore be hidden by default. This is similar to Ruby methods that return values and print them to the screen, in the context of the text output advices that will print out console.log.

//Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
// prompt("What's your favorite food?");
//confirm("That's my favorite food too!");

//Describe while and for loops
//While and for loops are two control flow loops usable in JavaScript.
//A while loop repeats code until the program reaches a specified stopping point. The word while is followed with an expression contained in parentheses and, if more than one statement is needed, statement(s) contained in curly braces.
//To simplify the while loop, for loops can be used. A while loop requires a counter to be updated at the end of each run of the program to function. A for loop simplifies this by including all the counter statements within parentheses. The order for this is the expression that initializes the loop, normally by defining a variable. A semicolon, then the expression that checks whether the loop must continue, and then another semicolon followed with the expression that updates the loop after every iteration.

//What other similarities or differences between Ruby and JavaScript did you notice in this section?
//Some general ideas are the same; control flow works with the same principles and some of the same statements.

//Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.
//What are the differences between local and global variables in JavaScript?
//Local variables are variables declared within a function, while global variables are declared outside of a function and are visible throughout the entire program. Global variables are accessible within functions, unless there is a local variable with the same name declared within the function.

//When should you use functions?
//A function allows you to wrap code and attach it to value, and so when you call on that value the code attached to it will run. Functions should be used as a tool to structure larger programs, reduce repetition and to isolate subprograms from each other.

//What is a function declaration?
//A function declaration is when the function keyword is used at the start of a statement. Function declarations ignore the top-to-bottom hierarchy of code and instead are placed on top of the scope.
//This can be useful when writing code in a narrative or logistical way, but it’s important not to use function declarations within a flow control loop as it causes programs to behave inconsistently and current JavaScript standards forbid it.

//What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
//the .max must be a valid variable name, and it directly names the property. [“max”] will evaluate the expression and uses the result as the property name. 

//What is a JavaScript object with a name and value property similar to in Ruby?
//The object is similar to a hash, with the name and value similar to the key and value, respectively.

