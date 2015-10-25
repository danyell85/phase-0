// JavaScript Olympics

// I paired Daniel W on this challenge.
// JavaScript Olympics

// I paired Daniel W on this challenge.

// This challenge took me 1.25 hours.


// Warm Up
//name, height, sport, and quote

var daniel = {
  name: "Daniel",
  height: 6,
  sport: "soccer",
  quote: "Hello there"
};
var danielle ={
  name: "Danielle",
  height: "5.8",
  event: "running",
  quote: "Bye there"
};

// Bulk Up   x = "age"; person[x]
// var array = [daniel, danielle];
// var bulkUp = function(array){
//   for(var x = 0; x <array.length; x++ ){
//     var person = array[x];
//     person.win = person.name + " won the " + person.sport + " event!";
//   }
// };
// bulkUp(array);
// console.log(danielle.win)
var array = [daniel, danielle];
function bulkUp(array){
  for(var x = 0; x <array.length; x++ ){
    var person = array[x];
    person.win = person.name + " won the " + person.event + "!";
  }
};

bulkUp(array);
console.log(danielle.win)
console.log(danielle)
// bulkUp(array)
// console.log(daniel)
// console.log(danielle)
// var me = new bulkUp("Pixels", 1, "polevault","I like goldfish", true)
// console.log(me)


// Jumble your words
// var jumble = function(string){
//  return string.split("").reverse().join("");
// };
// console.log(jumble("Some string"));

function jumble (string){
 return string.split("").reverse().join("");
};
console.log(jumble("Some string"));


// 2,4,6,8
// var evens = function(array){
//  return array % 2 == 0;
// };
// var array = [1,2,3,4,5,7,8,9,10];
// console.log(array.filter(evens));
function evens(array){
 return array % 2 == 0;
};
var array = [1,2,3,4,5,7,8,9,10];
console.log(array.filter(evens));



// "We built this city"
function Athlete(name, age , sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
var danielle = new Athlete(danielle.name,30, danielle.sport, danielle.quote);
console.log(danielle)
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)
/* Reflection
What JavaScript knowledge did you solidify in this challenge?
I wouldnt use the work solidify but it was good practice and showed where my weakness were.Assigning and calling properties on objects is much easier now. Still need practice fully grasping constructors.
What are constructor functions?
Constructor functions are objects that can be used in multiple instances to create new objects. or changed during its use 
How are constructors different from Ruby classes (in your research)?
From my poor understanding at this point, the difference is ruby objects inherite from a Class to create new ojects but javascript uses functions to create new objects. To inherit in javascript you need to use the prototype function.

*/