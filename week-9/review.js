
// Factorial challenge
//input: a number
//output: the factorial of that number
//If the number is 0, return 1
//If the number is more than 0
//	Create a variable equal to 0 and add the number to it
//	Subtract 1 from the number and multiply the new number to the variable
//	Loop through this until the number == 0

function factorial(number) {
	if (number == 0)
		return 1;
	else
		finalNum = number;
		for (newNum = (number - 1); newNum > 0; newNum --) {
			finalNum *= newNum
		}
		return finalNum;
}

console.log(factorial(5))

//Sentence Maker
//sentence_maker takes an Array of strings and returns each element joined into a sentence.
//Note: The first letter should be capitalized and the sentence should end with a period.

//input: an array with strings
//output: a single string sentence
//Capitalize array[0].
//Join each string together with a " " between them.
//Concat with a "." at the end.

function sentence_maker(array) {
	var firstWord = array[0];
	array.splice(0, 1);
	var firstWordUpcase = firstWord.charAt(0).toUpperCase() + firstWord.slice(1);
	sentence = array.join(" ");
	return (firstWordUpcase + " " + sentence + "."); 
}

console.log(sentence_maker(["cats","are","great","and","so","are","dogs"]))

/*
What concepts did you solidify in working on this challenge? 
It was good to practice JS after letting it settle in my mind for a few weeks. I ended up taking
on some of the more simple Ruby problems as a way to see if my general coding ability has gotten
better. It has; I found both of these challenges very difficult in Week 4 but had no trouble writing
pseudocode and promptly writing working code this go around. It made me feel a lot better about my 
skills and growth!

What was the most difficult part of this challenge?
Nothing really. If I have time, I'll go back and write do the die class as well, which I think will
be more challenging.

Did you solve the problem in a new way this time?
I did! I am just generally more aware of methods and ways to solve things, so I wrote cleaner code.

Was your pseudocode different from the Ruby version? What was the same and what was different?
Yes, especially with the Sentence Maker. I iterated through the array for that one, adding a space
after each word. It was much more complicated, and while I knew about .join this time around it was 
apparently my refactored solution then.
The for loop in the factorial function also made it cleaner than the code I initially wrote in Ruby.

