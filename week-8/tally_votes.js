var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// 

// __________________________________________
// // Initial Solution
// for(var voter in votes) {
//   var vote = votes[voter]; // a vote from a voter
//     for (var position in vote) {
//       var offical = vote[position]; //gives name of official
//       //within voteCount add the official name and tally inside the object of position.
//       var tally = voteCount[position][offical];
//       //use conditional statements with .hasOwnProperty to add 1 if true or keep at 1 if false, if I didnt want to use official. Using official goes one level deeper to avoid using hasOwnProperty. 
//       // or count say if voteCount[position] === president, tally +=1, almost "harding coding"
//       if(tally === undefined ){
//         tally = 1; 
//       }
//       else {
//         tally += 1; //only gets logged if voteCount[position][offical] exists
//       }
//       voteCount[position][offical] = tally; // calling outside the statement
//    }
// }
// //Basically do the same thing as above to get access to the votes and total if exists.
// // Create nested for loops again. // to access only the votes and compare
// for (var position in voteCount){ // position is the property of voteCount
//   var officals = voteCount[position]; // officals and the vote count
//   var highestVote = 0; // making variable to compare votes as they accumulate.
//   for (var offical in officals){   //access votes
//       var votes = officals[offical];//votes 
//       if (votes > highestVote){
//         highestVote = votes;
//         var winner = offical
//       }
//   } 
//   officers[position] = winner;
// }
 

// console.log(officers);




// __________________________________________
// Refactored Solution

for(var student in votes) {
    student = votes[student]; 
    for (var position in student) {
      var candidate = student[position]; 
      var tally = voteCount[position][candidate];
      if(tally === undefined ){
        tally = 1; 
      }
      else {
        tally += 1;
      }
      voteCount[position][candidate] = tally;
  }
};
for(var position in voteCount){
  var officials = voteCount[position];
  var highVotes = 0;
  for (var person in officials){
    var votes = officials[person];
    if (votes > highVotes){
      highVotes = votes;
      var winner = person
    }
  }
  officers[position] = winner;
}
console.log(officers)




// __________________________________________
/* Reflection
What did you learn about iterating over nested objects in JavaScript?
That I struggled with it! It took multiple attempts and having to come back to it for it to click. Using nested for loops allows you to access the inner objects within an object. The idea came from when we had to access nested arrays in ruby.
Were you able to find useful methods to help you with this?
I tried using the hasOwnProperty but decided to create it myself and go one level deeper. It was confusing at that moment to have more lines of code. 
What concepts were solidified in the process of working through this challenge?
I concept that I need way more practice. Also using nested for loops to access what part of the object you want. I had never used for in before.



*/




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)