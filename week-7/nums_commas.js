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

//create a loop using .length to measure how long the loop should go on and keep adding commas every three positions until the end

//posAdd = position + 4

// var separateComma = function(number) {
//   var num = number.toString();
//   var arr = num.split("").reverse();
//   // for (var position = 3; 
//   // var position = 3
//   var newArr = arr.splice(position, 0, ",");)
  
//   return arr
/*   def separate_comma(num)
 return num.to_s if num < 1000
 num_new = num.to_s.reverse
   array = []
   until num_new == "" || num_new == nil
     array << num_new.slice!(0, 3)
   end
 array.join(",").reverse
 end
 
 
 def separate_comma(i)
  if i <=3
    return i
  else new_i = i.to_s.reverse
  arr = []
    until new_i.empty?
      arr << new_i.slice!(0..2)
    end
  return arr.join(",").reverse
  end
end
*/
  
// }

// console.log(separateComma(123456789123456789));
/*
var separateComma = function(number) {
  
 
  
  
  
   var num = number.toString();
   var array = num.split("").reverse().join("");
   var reverseNum = array.toString();
  
    var newArray = []
    
  
  
  
  
  
   var position = reverseNum.length-3;
   var group1 = reverseNum.substr(position,3);
    
   var group2 = reverseNum.substr(-6,3);
   // var group3 = num.substr(-9,3);
   var arrayNew = []
   arrayNew.unshift(group1);
   arrayNew.unshift (group2);
  var final = arrayNew.reverse().toString();
  return final;
  return newArray;
  
};



console.log(separateComma(123456789));
*/
/*
var separateComma = function(number) {
   var num = number.toString(); //number to string
   var array = num.split("").reverse().join(""); //reverses string as array
   var reverseNum = array.toString(); //becomes reversed string (i.e. 54321)
  
  //from here we want to make it into an array like this [543,21]

  //I think I'm getting the syntax here wrong, but
  //if reverseNum is longer than two numbers
  //take three numbers from the end and put them into the array
if (reverseNum.length >= 2;
   var position = 2;
   var group = reverseNum.substr(position,3);
   var arrayNew = []
   arrayNew.push(group);
  else
    arrayNew.push(reverseNum);
  var final = arrayNew.reverse().join(",").toString();
  return final;
  return newArray;
   )}
  
};
*/



// Your Own Tests (OPTIONAL)


var separateComma = function(number) {


   var stringOfNums = number.toString();
   var splittedArray = stringOfNums.split("").reverse();
  //  var reverseNum = array.toString();
 // return splittedArray;

  //until we get to the last three numbers or less, slice and push into the new array
  //
  // while (splittedArray.length !== 0 )
//   var slicedArray = splittedArray.slice(0,3);
 
if (splittedArray.length >= 3){
  var slicedArray = splittedArray.slice(0,3)};
else{
slicedArray.push(splittedArray)
};
  return slicedArray;
      // return slicedArray
  

}
// return slicedArray;
// console.log(slicedArray);
console.log(separateComma(123456789));
  




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