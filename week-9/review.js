// Psuedocode:
// Input : An integer
// Output: high, low or correct
// Steps:
//  0. Ask user for input
// 	1.Create a function
// 		1. Generate a number 1-100
// 	2. Check to see if number value is greater than guess
// 	3. Check to see if number value is lower than guess
// 	4. Check to see f number value is equal to guess
// 	5. Let user know the outcome

//var guess = prompt("Choose an integer value");

var guess = Math.floor(Math.random() * 100) + 1;
var answer = Math.floor(Math.random() * 100) + 1;
function compare(){ 
	if (guess > answer){
		console.log("High");
	} else if (guess < answer){
		console.log("Low");
	} else if (guess == answer)
		console.log("Correct");
};

function solved(){
	if (guess == answer){
		consolelog(true);
	}	
	else{
		console.log(false);
	}	
};
compare();	
solved();
//Reflection:
//What concepts did you solidify in working on this challenge? 
//Creating and calling functions. 
//What was the most difficult part of this challenge?
//Deciding whether or not to make an object and use the list keyword to call the variables or set them outside the function so they could be accessed.
//Did you solve the problem in a new way this time?
//The only new thing was needed to created the answer and guess since I didnt have a spec file to run it againist. 
Was your pseudocode different from the Ruby version? What was the same and what was different?

