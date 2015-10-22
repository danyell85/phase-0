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
  sport: "running",
  quote: "Bye there"
};

// Bulk Up   x = "age"; person[x]
var array = [daniel, danielle];
var bulkUp = function(array){
  for(var x = 0; x <array.length; x++ ){
    var person = array[x];
    person.win = person.name + " won the " + person.sport + " event!";
  }
};
bulkUp(array);
console.log(danielle.win)
// bulkUp(array)
// console.log(daniel)
// console.log(danielle)
// var me = new bulkUp("Pixels", 1, "polevault","I like goldfish", true)
// console.log(me)


// Jumble your words
var jumble = function(string){
 return string.split("").reverse().join("");
};
console.log(jumble("Some string"));


// 2,4,6,8
var evens = function(array){
 return array % 2 == 0;
};
array = [1,2,3,4,5,7,8,9,10];
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

//Look into splat for args to not have to call each property.
// function example(arg1, ...more_args) {
//   console.log("Argument 1: ", arg1)
//   console.log("Other arguments: ", more_args)
// }

// test_args = [1, 2, 3]

// example(...test_args)
// Reflection