// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// Pseudocode
/*
input: integer
output: string
steps:
Convert integer to string
Cut up number into groups of three numbers in reverse, and assign variable to each group.
Combine all the variables together, adding a comma in between each group


Split into array of individual strings with each number as a string
Add a comma "," every third position in the array, starting from end
Turn array into a string
Display the string

*/

// Initial Solution


// var separateComma = function(number) {
//    var num = number.toString();
//    var position = -3
//    var group1 = num.substr(-3,3);
//    var group2 = num.substr(-6,3);
//    var group3 = num.substr(-9,3);
//    var final =  (group3 + ',' + group2 + ',' + group1);
  
  
//   return final;
  
  
// };


// console.log(separateComma(123456789));


// Refactored Solution


var separateComma = function(number) {

  if (number < 1000)
    return number;
  var stringOfNums = number.toString();
  var splittedArray = stringOfNums.split("").reverse();
  var initialLength = splittedArray.length;
  var startIndex = 0;
  var part = "";
   
  while (startIndex <= splittedArray.length){
    part += (splittedArray.slice(startIndex, startIndex + 3)).join('')+',';
    startIndex += 3; 
};
    part = part.split("").reverse(); 
  if (initialLength % 3 == 0){
    part.splice(0,2);
    
} else {
    part.splice(0,1);
   }
  part = part.join("");
    return part;
}

console.log(separateComma(123456789));
  
// Reflection

//What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//We initially approached this problem differently, though in a way where we had a stronger understanding of programming languages. While we managed to talk through at least five different solutions we could have written in Ruby, it was unfortunately painfully difficult to translate those thoughts into JavaScript. We struggled with this challenge for several hours and had a lot of difficulty making it work. I think this was partially because we were so new to the language and had to do a lot of research on methods and what JavaScript is and isn't capable, but it was really hard.

//What did you learn about iterating over arrays in JavaScript?
//There aren't similar methods to iterate over an array; where I use .each very often with Ruby it wasn't available with Javascript.

//What was different about solving this problem in JavaScript?
//We had to declare a lot of variables and and create many more loops to get a working solution. 

//What built-in methods did you find to incorporate in your refactored solution?
//.splice, .join, .reverse, .length, .split were some of many methods used. They are similar to their Ruby equivilents with some differences. .reverse only applies to arrays, and you can set .splice with a array position, objects to remove, and what to add.