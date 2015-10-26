/*Input: An integer
Output: That integer expressed as a string with commas in appropriate spots

Steps:
CONVERT integer to string
REVERSE string
SPLIT string into array of single chars
GROUP chars into sub-arrays of three chars each
  FOR loop
    SPLICE groups of three chars
    INSERT into
JOIN arrays of three into a single string
REVERSE string
RETURN string

****Going to try to use slice after further reading This wasnt my initial solution. Wanted to practice with other functions: function remove(array, index) {
  var separateComma = function(int){
  var string = int.toString().split("").reverse();
  
  if (string.length < 4){
    console.log(string);
  }; 
  var sectionsOfThree = []; 
  var allNums = [];
  var total = "" ;
  while (string.length > 0){
     sectionsOfThree = string.slice(0,3);
     sectionsOfThree = sectionsOfThree.join("");
     string = string.slice(3);
     allNums.push(sectionsOfThree);
     total = allNums.toString().split("").reverse();
     total = total.join("")
  };
     console.log(total);

};
separateComma(1343934588805058)
separateComma(134398)
*/
//Initial:
// function separateComma(integer){
//   var numbers = integer.toString().split("");
//   var reverseNum = numbers.reverse();
  
//   for(var counter = 3; counter < reverseNum.length ; counter += 4){
//     reverseNum.splice(counter,0,",");
//   };
  
//   var output = reverseNum.reverse().join("");
//   return output;

// };

Refactored:
function separateComma(integer){
  var numString = integer.toString().split("").reverse();
  
  for(var counter = 3; counter < numString.length ; counter += 4) {
    numString.splice(counter,0,",");
  };
  return numString.reverse().join("");
};

console.log(separateComma(1345));

/*
Reflection:
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
It was enjoyable to apply JavaScript to this challenge. It helped knowing somewhat how to apporach it already so we could just focus on JavaScript syntax and practice. Our initial idea was a different apporach but wasnt successful so we decided to reverse it like we both had done in the prior challenge. 
What did you learn about iterating over arrays in JavaScript?
You can use a for loop or while loop that will iterate over an array. We were spoiled in Ruby being able to use .each or .map. Althought using the for loop helped break down or visually see how it happened instead of using a built-in method. 
What was different about solving this problem in JavaScript?
It wasnt too different, there were just more focus on rememebering the syntax. Having to define the variable with var and the semicolons. 
What built-in methods did you find to incorporate in your refactored solution?
We used splice to be able to insert a comma for every 3 elements. I would love to go back and use unshfit and shift. There were in the running at first with slice but we didnt get it to return what we excepted and didnt want to go down a rabbit hole.
*/