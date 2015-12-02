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
