
/*
Gradebook from Names and Scores
I worked on this challenge with: Lisa Buch
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

// var gradebook = {
  
// };

// //RELEASE 2 & 3
// function namesToBook(students, scores) {
//   var i = 0;
//   for (i; i < students.length; i++){
//     gradebook[students[i]]= {testScores: scores[i]};
//   }
// }

// namesToBook(students, scores);

// //RELEASE 4
// var addScore = function(student, score){
//   gradebook[student].testScores.push(score);
// }
// gradebook.addScore = addScore;

// //RELEASE 5 & 7
// var getAverage = function(name){
//   return average(gradebook[name].testScores);
// }
// gradebook.getAverage = getAverage;
// console.log(gradebook.getAverage("Joseph"))


// //RELEASE 6
// function average(array){
//   var total = 0
//   var i = 0
//   for (i; i < array.length; i++){
//     total += array[i];
//   }
//   var avg = total / array.length;
//   return avg;
// }

// __________________________________________
// Refactored Solution

var gradebook = {
  
};

//RELEASE 2 & 3
function namesToBook(students, scores) {
  for (var i = 0; i < students.length; i++){
    gradebook[students[i]]= {testScores: scores[i]};
  }
}
namesToBook(students, scores);

//RELEASE 4
var addScore = function(student, score){
  gradebook[student].testScores.push(score);
}
gradebook.addScore = addScore;

//RELEASE 5 & 7
var getAverage = function(name){
  return average(gradebook[name].testScores);
}
gradebook.getAverage = getAverage;
console.log(gradebook.getAverage("Joseph"))


//RELEASE 6
function average(array){
  var total = 0
  for (var i = 0; i < array.length; i++){
    total += array[i];
  }
  var avg = total / array.length;
  return avg;
}






// __________________________________________
// Reflect
/*
What did you learn about adding functions to objects?
I'm not sure we found the most efficient or best way to do it, 
but after writing the function we simply added the function with this syntax:
object.function = function;
which allowed us to add the function to the object.

How did you iterate over nested arrays in JavaScript?
We used a for loop with a counter that represented the array position.
This allowed us to move through each position on the array, with a cutting off 
point of array.length.

Were there any new methods you were able to incorporate?
If so, what were they and how did they work?
We were able to write some simple and efficient code without the use of any 
methods we had to look up.


*/


// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)