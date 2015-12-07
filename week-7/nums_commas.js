// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode



// Initial Solution
function separateComma(number){

  var array = number.toString().split("");


  if ( array.length >=4 ) {
    for(var x = array.length-4; x >= 0; x-=3) {
      array[x] = array[x] + ','
    }
    console.log(array.join(""))
  }
  else{
    console.log(number);
  }
}



// Refactored Solution

function separateComma(number){

  var array = number.toString().split("");
    for(var x = array.length-4; x >= 0; x-=3) {
      array[x] = array[x] + ','fir
    console.log(array.join(""))
  }
}



// Your Own Tests (OPTIONAL)




// Reflection
//1) No, I continued the same process of thinking though a problem and working it.  Of course the tools are different, which required a different solution, but the process was more or less the same.

//2) It's not nearly as simple as it is in Ruby

//3) Because there aren't as many built in methods you have to think about how some of the tools from Ruby work, and deconstruct them into constituent parts.

//4) toString, length, split, join, and console.log
