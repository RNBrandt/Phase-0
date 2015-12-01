// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var name = "Reuben "
name = name.contcat "Brandt"
console.log(name)


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
for (var hash = "#"; hash.length <=7; hash += "#")
  console.log(hash)


// Functions

// Complete the `minimum` exercise.
function min(number1, number2){
  if (number1 < number2)
    return number1;
  else if (number1 > number2)
    return number2;
  else
    console.log("the two numbers are equal")
}



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = [
{name: ["Reuben]",
age: [29],
favoriteFoods: ["french fries", "hamburger", "ribs"],
}
];

//  Introduction
//Did you learn anything new about JavaScript or programming in general?

// I think at this point the fundamental idea behind the difference between computers and programming is fairly clear.  I did like the factoid about JavaScript running on the coat-tails of Java interesting, as well as the political intrigue regarding JavaScript 4

//Are there any concepts you feel uncomfortable with?


// So far so good, though I know JavaScript to be complecated so I wait with baited breath!

//Chapter 1

//Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.

// The two languages are very similar at this level, booleans have more similarities than not, and both systems rely on the unicode standard for strings (Z<a).  JavaScript, however, has automatic type conversion for numbers ("5" + 5 = 10) in JavaScript vs TypeError in Ruby.  Also, and perhaps more importantly, in Ruby 0 is a truthy value, where in JavaScript it is falsy.

// Chapter 2

//What is an expression?
// an expression is a fragment of code that produces a value.  That includes values written literally, between parentheses.

//What is the purpose of semicolons in JavaScript? Are they always required?
// A semicolon denotes the end of a statement.  They aren't always needed, but the rules are complex, so perhaps we'll get to that later.


//What causes a variable to return undefined?
// a variable returns undefined if the variable hasn't been assigned a value.

//Write your own variable and do something to it in the eloquent.js file. above


//What does console.log do and when would you use it? What Ruby method(s) is this similar to?

// console.log prints what's in the log to the console.  You would use this when experimenting with code and you need to see the result of your expression.  This is similar to the Print and P methods.


//Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.

var food = prompt("What's your favorite food?");
alert ("Hey! That's my favorite food too!");

//Describe while and for loops

// While and for loops work very similarly to their counterparts in ruby.  While loops execute a block of code as long as a the condtion hold true, and escapes when that expression is no longer true.  The Do loop is similar to the while loop except that it always executes the code at least once before it determines whether it should continue to execute the code.


//What other similarities or differences between Ruby and JavaScript did you notice in this section?

// Really they seem more similar than different at this point.  Clearly the syntax and some of the specifics are different, but fundamentally both languages are logical progressions of thought.


//Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.
//above

/*
What are the differences between local and global variables in JavaScript?
Local variables are called within any var function and are only accessible within that function. Global variables are called outside a function and can be called from inside or outside a function (so long as you don't have a local varible with the same name)


When should you use functions?

You should use a function anytime you need an expression to be mobile.  Specifically, a function gives a variable name to an expression, so you can nest expressions within oneanother without being needlessly complecated


What is a function declaration?

A function declaration is a shorthand way of creating a function. Rather than writing var thing_o = function(){}
you can just write function thing_o(){}


Complete the minimum exercise in the eloquent.js file.
above

What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]

When using a dot the part after the dot must be a valid variable name, and it directly names the property.  When usingsquare brackets, the expression between the brackets is evaluated to get the properrty name .  where value.x fetches the property of value named "x", value[x] tries to evaluate the expression x and usses the result as the property name.

Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.
above
var me = [
{name: ["Reuben]",
age: [29],
favoriteFoods: ["french fries", "hamburger", "ribs"],
}
];
]

What is a JavaScript object with a name and value property similar to in Ruby?

Strings and slice