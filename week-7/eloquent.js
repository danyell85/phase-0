
// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var name = "Danielle";
console.log(name + " is my name!");
//var favFood = prompt("What is your favorite food")
console.log("Hey! That's my favorite food too!")



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//Looping A Triangle:
for(var i = "#" ; i.length < 8 ; i += "#"){
  console.log(i);
};
//FizzBuzz
for (var numbers = 1; numbers <= 100; numbers++){
if ( numbers % 5 == 0 && numbers % 3 == 0)
  console.log("FizzBuzz");
else if (numbers % 3 == 0)
  console.log("Fizz");
else if (numbers % 5 == 0 && numbers % 3 != 0)
  console.log("Buzz");
else 
  console.log(numbers);
};



// Functions

// Complete the `minimum` exercise.
function min(num1,num2){
 if (num1 > num2)
 	return num2
 else 
 	return num1
};
function min(num1,num2){
	return(Math.min(num1,num2));
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
	name : "Danielle",
	age : 30,
	favoriteFood : ["Tomato Soup","Oysters","Grilled Cheese"],
	quirk : "I just completed watching all Star Trek episodes",
};
console.log(me)