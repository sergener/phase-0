//All the steps, compiled after the project was complete (all tests passed)


/*
As a user, I want to give you a group of whole numbers to do three different math problems with.
The problems should work whether I give you an even or odd amount of numbers to work with.

1. Sum: The program should be able to take those numbers and add them up.
2. Mean: The program should also be able to take the numbers and come up with an average.
3. Median: The program should be able to give a median value of all the numbers.

*/

// Pseudocode:

// Input: A group of whole numbers
// Output:
//   A. An integer value
//   B. A number value (either float or integer)
//   C. A number value (either float or integer)

// Steps:

// A. Create a method called sum that adds up all the numbers.
//   1. Create a counter called sum. Set it equal to 0.
//   2. Iterate over the group of numbers. Add each number to sum.
//   3. Return the final value of sum.

// B. Create a method called mean that returns an average of all the numbers.
//   1. Use the returned value of sum from part A.
//   2. Count the amount of numbers in the group of numbers.
//   3. Divide the sum by the amount of numbers.
//   4. Return that value.

// C. Create a method called median that returns the number that is in the middle of the group of numbers.
//   1. Arrange the numbers in order from least to greatest.
//   2. Count the amount of numbers in the group.
//     a.IF there are an odd amount of numbers:
//       -divide the amount of numbers by 2 to return an integer value, and add 1.
//       -return the number that is at that index position in the group.
//     b.ELSE (there are an even amount of numbers):
//       -divide the amount of numbers by 2.
//       -take a slice of 2 numbers out of the group at that index position.
//       -add the numbers in that slice together.
//       -divide that sum by 2.0
//       -return that number.

/*
Initial code


var numArray = [1,2,3]

function sum(numbers) {
  
  var sum = 0; 
   
  for(var i = 0; i < numbers.length; i++) {
    sum = sum + numbers[i];
  }
  return sum;
}
console.log(sum(numArray));


function mean(numbers) {
  var newSum = sum(numbers);
  var newSumLength = numbers.length;
  var mean = newSum / newSumLength;
  
  return mean;
}

console.log(mean([1,2,3]));


function median(number) {
  var sortedNumbers = number.sort();  
  var countedNumbers = number.length; 
    if(countedNumbers % 2 != 0) { 
      var index = Math.floor((countedNumbers / 2)); 
      return number[index];
    }
  else {
    var evenIndex = (countedNumbers / 2) - 1;
    var addedSlice = number.slice(evenIndex,evenIndex+2);
    console.log(addedSlice);
    var sumSlice = addedSlice[0] + addedSlice[1]; 
    var dividedSlice = sumSlice / 2;
    return dividedSlice;
    } 
}
  
console.log(median([1,2,3]));
console.log(median([1,2,3,4]));


*/


// What I think the user stories are

// 1. As a user, I want to be able to input a group of numbers into a function called "sum" and have it give me the sum of all numbers in the group.
// 2. As a user, I want to be able to input a group of numbers into a function called "mean" and have it give me the mean of those numbers.
// 3. As a user, I want to be able to input a group of numbers into a function called "median" and have it give me the median of those numbers. If there are an even number of values in the group of numbers, I also want the function to give me the two numbers that are divided to produce the mean.

// Refactored code

// Function to sum numbers in an array
function sum(numbers) {
  return numbers.reduce(function(a, b) {
    return a + b;
  });
};

// Function to return the mean of the sum of all numbers in an array
function mean(numbers) {
  return sum(numbers) / numbers.length;
};

// Function to find the median of a set of numbers in an array
// If the array has an even number of values, return the median and an array containing the two digits that will be divided to get the median
function median(number) {
  number.sort();
  var countedNumbers = number.length;
  if(countedNumbers % 2 != 0) {
    var index = Math.floor((countedNumbers / 2));
    return number[index];
  }
  else {
    var evenIndex = (countedNumbers / 2) - 1;
    var addedSlice = number.slice(evenIndex,evenIndex+2);
    console.log(addedSlice);
    return (addedSlice[0] + addedSlice[1]) / 2;
  }
};