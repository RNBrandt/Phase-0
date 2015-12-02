
// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


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