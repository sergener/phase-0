 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Use a program to manipulate a dog object, Euler, and get the bacon from the counter without being caught by Kait, his owner.
// Goals: Get the bacon from the counter
// Characters: Euler the chocolate lab and Kait, his mom/owner.
// Objects: Euler, Kait and Bacon
// Functions:

// Pseudocode
//Game:

//note: I removed distract in the process of coding to make it easier, but will add at a later date.

//It takes 10 steps to make it to the bacon and win. Each turn you can choose to either (distract the owner), move forward a step. or stay.

//While counter < 10 prompt for an action (the choices are (distract), sneak, and stay)

//IF you choose to distract
//A function will randomly select something from an array, which will distract the people for a random number of steps you can move forward (between 1 and 4).  It will add up to 3 annoyance to Kait.

//IF you try to sneak forward, there is a chance you will get caught and add to annoyance level.
	//A function will act as a coin flip.
	//If you flip positively, you will move forward one and add one excitment to Euler.
	//If it flips negatively, you will move forward one but also add an annoyance to Kait.

//IF you decide to stay put, you lower your excitement and Kait’s annoyance level by 1.

//The game wins if the counter is >=10. euler.bacon is true and the game will print a successful string.

//Otherwise, the game will check the excitment and annoyance levels.
//If excitment is > 4, Euler gives himself away and is pulled one step away from the bacon.
//If Kait's annoyance is higher than 3 she will make Euler take two steps away from the bacon.

//(Added complexity)For the last turn (get the bacon?) it must be random. If caught here, you go back to start. Lose this three times and lose entire game. 

//(Added complexity: add characters, have characters who come in and out of the room and have different things that distract them more or less, will penalize you more or less.)

//while you are <10 you are prompted to move forward

//
//
//
//

// Initial Code
var euler = {
	name: "Euler";
	excitment: 0;
	bacon: false;
}

var kait = {
	name: "Kait";
	annoyance: 0;
}

var bacon = {
	id = "food"
}

//Distractions: [Distraction info, moves, annoyance level]
var distractions = {
	napkin = ["You stole a napkin and tore it up in another room so mom had to clean it up!", 4, 3];
	bark = ["You barked at the door until mom checked if someone was there!", 3, 2];
	cute = ["You were super duper cute! Mom kissed your nose before going back to work.", 2, 0];
	squeak = ["You were really good and played with your squeaky toy! Mom got up to throw it for you!", 1, 1];
}

function baconbreak(action){
	var stepsToBacon = 0;
	while euler.bacon == false {
			//if action == distract{
			//	this ended up being very complicated and will need to be taken on again with deeper JS knowledge.
			if (action == sneak) {
				var move = function() {
					var chance = (Math.round(Math.random()))
						if (chance == 0) {
							stepsToBacon += 1;
							euler.excitement += 1;
						}
						else (chance == 1) {
							stepsToBacon += 1;
							kait.annoyance += 1;
						}}
			}
			else (action == stay) {
				var add = function (){
					for (euler.excitement > 0) {
						euler.excitement -= 1;}
					for (kait.annoyance > 1) {
						kait.annoyannce -= 1;
				}}
			}
		if (stepsToBacon >= 10) {
			euler.bacon = true;
			return("You got the bacon! You won!")
		}
		else (stepsToBacon < 10) {
			var consequences = function () {
				for (euler.excitement > 4) {
					stepsToBacon -= 1;
					euler.excitement = 0;
				}
				for (kait.annoyance > 3) {
					stepsToBacon -= 2;
					kait.annoyance = 0;
					euler.excitement = 0;
				}
			return("You are " + stepsToBacon + " steps to the bacon out of ten, are " + euler.excitement + " excited and mom is" + kait.annoyance + "annoyed.")
			//this loop doesn't work as it is - I need to prompt for more action (make it destructive?)

			}

		}

}

}


// Refactored Code



// Reflection
//What was the most difficult part of this challenge?
//I spent a lot of this week struggling with adjusting my thinking from Ruby to JavaScript, and I think it really culminated in this challenge since there was so little direction. 

//What did you learn about creating objects and functions that interact with one another?
//I'm still having trouble with this, but I think I do have a slightly better idea of how to add and change things in objects with the use of functions.

//Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//To get a random number of either 1 or 0 I combined the built in methods .round() and .random(). Math.round() returns a number rounded either up or down to the nearest integer, and .random() provides a random number from 0 up to 1. 


//How can you access and manipulate properties of objects?
//I mostly uses object.property to access the property value and change it.
//
