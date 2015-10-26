/* JavaScript Telephone Challenge

My role in the group is person 1/Danielle Cameron: Test to User Stories

As a user I want to be able to calculate the sum by going through a list of numbers and adding all the numbers in it as its own function called sum.

As a user I want to be able to calculate the mean by going through a list of numbers, adding all the numbers and dividing by the total amount of numbers, as its function called mean.

As a user I want to be able to calculate the median by going through a list of numbers and finding the middle number of that list, as its own function called median.

Person 2 Armani Pseudocode 

 define a function called sum that takes an array of numbers as an arguement
 	set a variable called total equal to zero
 	then set a variable called position equal to zero
 	while position is less than the length of the array
 		add total and array[position]
 	psoitions value goes up by one
 	return total


 define a function called mean that takes an array of numbers as an arguement
 	return the value of sum being called with the array divided by the length of the array


 define a function called sortNumber that takes two arguements (a and b)
 	return a - b


 define a function called median that takes an array as an arguement
 	create a new_array equal to sorted original array
 	if there are an odd number of digits in the array
 		return new_array[find middle digit by dividing by two and subtracting .5]
 	else
 		return (new_array[new_array.length divided by 2] + new_array[(new_array.length divided by 2) - 1]) divided by 2

Person 3: Issac
function sum(array){
	var total = 0;
	for (var position = 0; position < array.length; position++)
		total += array[position];
		return total
}

function mean(array){
	return (sum(array)/array.length);
}

function sortNumber(a,b) {
	return a - b;
}

function median(array){
	var new_array = array.sort(sortNumber);
		if (new_array.length%2 == 1) 
			return new_array[(new_array.length/2)-0.5];
		else
			return (new_array[new_array.length/2] + new_array[(new_array.length/2) - 1])/2;
}

var a = [1,15,8,19,2,11,100,]
// console.log(sum(a))
// console.log(mean(a))
// console.log(a.sort(sortNumber))
// console.log(median(a))
Person 4: Celeste 		
