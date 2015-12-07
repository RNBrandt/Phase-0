// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Get the chicken to the other side
// Overall mission: Figure out why the chicken got to the other side
// Goals: forage for food, walk across the road, avoid cars, fight a rooster, talk to the egg.
// Characters: Rooster, chicken, egg
// Objects: Rooster, has name and health.
//          chicken, has name, health, food, location
// Functions: I will have a fight function that will take health away from objects in turn, I will have a forrage function that will add food, and a walk/run function that will let change the chicken's location, and stores.

//The forrage function will choose a number randomly, if it's divisible by 2 you get a food, otherwise try again,
// There will be a road crossing function, the first time you cross the road you will be attacked by Rooty the Rooster.
// The fight fuction will to damage to you each time, you will only do damage if the function comes up with an even number.

// THIS IS WHERE I'LL STOP AND SEE HOW MUCH TIME IT's TAKING,

// If I'm having fun, I'll continue through the following.

// The cross function will have a counter of 3, so it will take 3 crosses to make it to the other side, and take one food away each time. At the second point a car will come and you'll either have to run or turn back. (sub function) Running will take 2 foods, turning back will also work, but you evenutally have to run to miss the car.

// Eventually you make it to the other side and have a strangely long and complicated conversation with an egg.

// Pseudocode
// 1) DEFINE the OBJECTS with all the appropriate attributes
// 2) ADD the functions, FORAGE should get food half the time to increase :food of the chicken.
// FIGHT should have a rand and affect the health of both the rooster and chicken.
// THIS IS WHERE I PLAN TO STOP INITIALLY.
// Cross will have a counter index, and take food away with every implmementation.
// Run will do the same as CROSS but will take away two foods
//3)
//
//
//

// Initial Code
// var chicken = {
//   name: "nn",
//   foods: 0,
//   health: 6,
// }

// var rooster = {
//   name: "Rooty",
//   health: 6,
// }
// if (chicken.name == "nn"){
//   chicken.name = prompt("Before we head off how about you tell me your name");
//   alert("Right on "+ chicken.name + ", before we try to cross the road you need to forage for food. You can make it with only 4 bits of food.");
//   }
//  while (chicken.foods <4){
//      alert("Your food reserves are currently  " + chicken.foods + " spend a moment foraging");
//      var foodsNumber = Math.floor((Math.random() * 10) + 1);
//      if ((foodsNumber % 2) == 0){
//    alert("neat, you found some food!");
//      chicken.foods +=1;}
//      else{
//      alert("Bummer you didn't find anything give it another go.")};
// }
// if ((chicken.health == 6) && (rooster.health == 6)){
//     chicken.health-=1;
//    alert("Oh No! " + rooster.name + " doesn't want you to cross the road he just attacked you and took some of your health. Your health is currently " + chicken.health);
//    var attack = confirm("Would you like to fight back?")
//    if (attack === true){
//        while (rooster.health > 0){
//        var damage = Math.floor(Math.random() * (6 - 0 + 1)) + 0;;
//        rooster.health -= damage;
//        alert("Nice! you hit Rootie and did " + damage + " bits of damage to him, now his health is only " + rooster.health)
//        chicken.health-=1;
//        alert("Oh No! " + rooster.name + " doesn't want you to cross the road he just attacked you and took some of your health. Your health is currently " + chicken.health);}
//    }
//    alert("Good Job!! You can cross the road now!!");
// }
// //}




// Refactored Code

var chicken = {
  name: "",
  foods: 0,
  health: 6,
}

var rooster = {
  name: "Rooty",
  health: 6,
}
function chickenName(){
    chicken.name = prompt("Before we head off how about you tell me your name");
    alert("Right on "+ chicken.name + ", before we try to cross the road you need to forage for food. You can make it with only 4 bits of food.");
  };


function food(){
    while (chicken.foods <4){
    alert("Your food reserves are currently  " + chicken.foods + " spend a moment foraging");
    var foodsNumber = Math.floor((Math.random() * 10) + 1);
    if ((foodsNumber % 2) == 0){
        alert("neat, you found some food!");
        chicken.foods +=1;}
        else{
            alert("Bummer you didn't find anything give it another go.")};
    };
}

function fight(){
    chicken.health-=1;
    var attack = confirm("Oh No! " + rooster.name + " doesn't want you to cross the road he just attacked you and took some of your health. Your health is currently " + chicken.health + " would you like to fight back?");
    if (attack === true){
        while (rooster.health > 0){
            var damage = Math.floor(Math.random() * (6 - 0 + 1));;
            rooster.health -= damage;
            alert("Nice! you hit Rootie and did " + damage + " bits of damage to him, now his health is " + rooster.health)
            if (rooster.health > 0){
                chicken.health-=1;
                if (chicken.health > 0){
                alert("Oh No! " + rooster.name + " doesn't want you to cross the road he just attacked you and took some of your health. Your health is currently " + chicken.health);}
                else {
                    alert("Oh no " + chicken.name + "Roostie succeeded in stopping you");
                    { break; }
                    }
            }
            else {
                    alert("Good Job!! You can cross the road now!!");}
        ;}
    }
    else {
        alert("Well then " + chicken.name + " I suppose you fail!");
        }
}



chickenName();
food();
fight();
// Reflection
// 1)  The toughest part of this challenge was nesting all of the options, and making sure that everything happened in the right order, and nothing started without the previous bit ending
//
//2) I learned that it's way easier and more fun than I was expecting.  Admittedly, and you can see it from my initial code, I started using for, and while loops.  I did quickly learn how to get functions to go sequentially (it was way easier than I was expecting too).
// 3) I was running out of time as I was refactoring, really making sure that everything moved smoothly.  The biggest built-in method I found and used was the BREAK method which was great and really solved my problem!.
//4) All you need to do is access it, and change its value in the format object.key = new value.
//
//
//
