// Release 1 Pseudocode
// I'm going to do a version of the FizzBuzz challenge for this challenge.  The code will display all numbers from 0 to 100 and REPLACE each number that's divisable by 15 with FizzBuzz, each number that's divisable by 5 with Buzz, and each number that's divisable by 3 with Fizz.


// Initial solution

// for (var n = 1; n <= 100; n++) {
//   var output = "";
//   if (n % 15 == 0)
//     output = "FizzBuzz"
//   else if (n % 3 == 0)
//     output = "Fizz";
//   else if (n % 5 == 0)
//     output = "Buzz";
//   console.log(output || n);
// }


Refactored solution
for (var n = 1; n <= 100; n++) {
  var output = "";
  if (n % 3 == 0)
    output += "Fizz";
  if (n % 5 == 0)
    output += "Buzz";
  console.log(output || n);
}