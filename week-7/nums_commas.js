/*Input: An integer
Output: That integer expressed as a string with commas in appropriate spots

Steps:
CONVERT integer to string
REVERSE string
SPLIT string into array of single chars
GROUP chars into sub-arrays of three chars each
  FOR loop
    SLICE groups of three chars
    INSERT into
JOIN arrays of three into a single string
REVERSE string
RETURN string

nums1 = nums.slice(0,3);
num_string = nums1[0] + nums1[1] + nums1[2] + ",";
if num_string 

console.log(num_string);
*/
//Initial:
// function separateComma(integer){
//   var numbers = integer.toString().split("");
//   //console.log(numbers);
//   var reverseNum = numbers.reverse();
//   // console.log(reverseNum);
  
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