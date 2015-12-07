
// JavaScript Olympics

// I paired [by myself, with: Luis] on this challenge.

// This challenge took me [0.5] hours.


// Warm Up




// Bulk Up


var phelps = {
  name:'Michael Phelps',
  event:'100 M Freestyle'
}
var eminem = {
  name: 'Marshall Mathers',
  event: '100 Second Freestyle'
}
var hughes = {
  name:'Susan Hughes',
  event:'Ladies Singles'
}
var athletes = [phelps, hughes, eminem];
  var name = 'name';
for (var index = 0; index < athletes.length; index+=1){
  console.log(athletes[index][name] + " won "+ athletes[index]['event']);
}





// Jumble your words


var Athlete = function(name,age,sport,quote){

  this.name  = name;
  this.age   = age;
  this.sport = sport;
  this.quote = quote;
}


// DRIVER CODE

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)

console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// 2,4,6,8




// "We built this city"




// Reflection
// 1) I firmed up my knowledge of creating functions, and working with objects.
// 2) constructor functions similar to a traditional object, except that they remain unique and will cannot be easily changed... I think, I need to use them more to understand how they should be used.
// 3) Constructors seem to be similar to classes and class variables.  Dear grader, if you have a better understanding of this please let me know in your comment (or link to your answer) THANKS!!