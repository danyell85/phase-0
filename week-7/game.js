 // U3.W7: Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Collect 3 jewels by slaying and dragon, and placing jewels correctly on the crown
// Goals: defeat a dragon
// Characters: arthur & dragon
// Objects: Arthur(health, jewels, attack and position. Crown(position)

/* Pseudocode
Create variable dragon with health, jewels and attack
Create variable arthur with health, jewels, attack, position and fights function
In fights function input will be attackstrength which will be a random number between 1 & 100
Create while or do block with if conditional inside. The while/do will keep running until dragon or arthur health is below zero.
	Create if block that pending on attackstrength number the dragon health will decrease by attackstrength
		if attackstrenght is low arthur will take damage. 
		print to console what the current health level of dragon or arthur. 
	If coniditional if arthur wins the jewels from dragon become arthurs
Create crown variable that will have a function for the placement of jewels if arthur slays the dragon.
	If conditional - arthurs position is the same as the random position of how the jewels should be placed, he wins
	else he did slayed a dragon to be defeated by jewel placement.
*/
// Initial Code
var dragon = {
	health: 100,
	jewels:3,
	attack:20,	
}
var arthur = { 
	health: 100,
	jewels: 0,
	attack: 0,	
	posX: Math.floor((Math.random()*3)+1)
	};
function fights(){
	do {
		var attackstrength = Math.floor((Math.random()*100)+1);
		if (attackstrength > 50){
			arthur.attack = 50;
			dragon.health = dragon.health - arthur.attack;
			console.log("Arthur attacked dragon with 50xp. The dragon health is at "+ dragon.health);
		}
		else if (attackstrength < 50 && attackstrength > 25){
			arthur.attack = 20;
			dragon.health = dragon.health - arthur.attack;
			console.log("Arthur attacked dragon with 20xp. The dragon health is at "+ dragon.health);
		}
		else if (attackstrength < 25){
			arthur.health = arthur.health- dragon.attack;
			console.log("Dragon attacked Arthur with 20xp. Arthurs health is at "+ arthur.health);
		}
	}	
			
	while (arthur.health > 0 && dragon.health > 0 );
		if (dragon.health <= 0){
			arthur.jewels = 3;
			dragon.jewels = 0;
			console.log("Arthur defeated the dragon and got all of his jewels.")
		}
		else console.log("Dragon kept all his jewels & Arthur died.")	
}

var picture = '\u2654';
var crown = {
	posX: Math.floor((Math.random()*3)+1),
	};	
function placement(){
	if (arthur.jewels > 0 && arthur.posX === crown.posX){
		console.log("Arthur placed all the jewels correctly on the crown" + picture)
	}
	else console.log("All that work slaying a dragon and he couldnt place the jewels correctly for the princess.")
	}	

fights();
placement();

/* Reflection:
What was the most difficult part of this challenge?
Coming up with a game! Also the random function gave me so problems it took me a little bit to understand the + 1. 
What did you learn about creating objects and functions that interact with one another?
I loved that the variables are all global and easily accesiable . I created functions as properties of the objects in this game and then called them. In my other I created functions separate from the objects.
Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
I didnt refactor this, I instead tried to create an interactive game with my remaining time. It looks like a kindergarden built it but helped me by creating more objects and functions to better get the grasp of them interating. 
How can you access and manipulate properties of objects?
*/

