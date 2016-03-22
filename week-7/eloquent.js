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



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.