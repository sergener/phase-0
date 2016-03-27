/*
As a user, I want to give you a group of whole numbers to do three different math problems with.
The problems should work whether I give you an even or odd amount of numbers to work with.

1. Sum: The program should be able to take those numbers and add them up.
2. Mean: The program should also be able to take the numbers and come up with an average.
3. Median: The program should be able to give a median value of all the numbers.

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