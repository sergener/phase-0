 // JavaScript Olympics

// I paired by myself on this challenge.

// This challenge took me [#] hours.

//Warm up
//input: Array of objects with athlete name and event to win
//output: A string consisting of name, win property, and event
//steps:
//Create two objects that include name property and event property.
//Put those two objects into a single array.
//Create a function to add a win property to add to each object.
//From that function, return the output string.


var brianne = {
    name: "Brianne Jenner",
    event: "Clarkson Cup",
  };

var hilary = {
    name: "Hilary Knight",
    event: "Isobel Cup",
  }


var athleteArray = [brianne, hilary]

var athleteWin = function(array) {
  for (var index = 0; index !== array.length; index ++) {
      array[index].win = array[index].name + " won the " + array[index].event + "!"
      console.log(array[index].win)
  } 
}

athleteWin(athleteArray)

//console.log(brianne.win)
//console.log(hilary.win)

// Jumble your words

// input: a string
// output: a reverse of the input string
// steps:
// create a function that will reverse an input string
// convert that input string into an array
// reverse that array
// join the reversed array back into a string


var jumble = function (string) {
  var arrayString = string.split("").reverse().join("")
  return arrayString
}

console.log(jumble("Jumble your words"))

// 2,4,6,8

//input: an array of numbers
//output: an array including only the even numbers from the original array
//steps:
//Create a function that accepts an array as an argument
//Map that array specifically with a function that tests if the number is divisible by 2
//If the number is divisible by 2, include it
//Else don't include number
//return new array

var evens = function(array) {
  var evenNums = array.filter(function(num) {
    return num % 2 === 0;
  })
  return evenNums
}

var numberArr = [1, 2, 3, 4, 5]

console.log(evens(numberArr))

// "We built this city"

// input: a variable using the Athlete function to take four arguments including name, age, sport and quote
// output: a new object including all of the input data
// steps:
// create the function object called Athlete that accepts 4 arguments
// within the function object use this.[property] to take each argument as a value

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection


