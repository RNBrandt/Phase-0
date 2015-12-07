// Person 1
// As a user I need tests that will take a list of numbers and return the
// mean, median, and mode of all the numbers on the list.  These programs
// must be able to accomodate lists of varying size.

// Input: An array of numbers
// Output: The mean, median, and mode of all the numbers on the list.
// Steps:
//   Mean: Iterate through array and add all elements together, then divide by
//         the number of elements in the array.
//   Median: Sort the array from smallest to largest numbers, then return the
//           array element which is in the middle of the array.
//   Mode: First, create an empty hash where the keys are numbers which occur
//         in our array and the values represent the frequency of these
//         numbers occur in our array. Return the number with the highest
//         frequency.

function meanAndFriends(list) {
  function mean(list) {
    var sum = [list[0]];
    for (i = 1; i < list.length; i++)
      sum.push(list[i] + sum[i-1]);
    sum.reverse();
    var calculateMean = undefined;
    calculateMean = sum[0]/list.length;
    console.log("Mean: " + calculateMean);
    return calculateMean;
  };
  function median(list) {
    var sortedList = list.sort(function(a,b){return a-b});
    var medianIndex = (list.length - 1) / 2;
    medianIndex = Math.round(medianIndex);
    console.log("Median: " + list[medianIndex]);
    return list[medianIndex];
  };
  function mode(list) {
    var frequencies = {}
    var sortList = list.sort(function(a,b){return a-b});
    var uniqueList = [sortList[0]];
    for (i = 1; i < list.length; i++)
      if (sortList[i] != sortList[i-1])
        uniqueList.push(sortList[i]);
    for (x = 0; x < (list.length); x++)
      frequencies[uniqueList[x]] = 0;
    for (y = 0; y < (list.length); y++)
      frequencies[sortList[y]] += 1;
    var max = undefined;
    for(var i in frequencies) {
        if (frequencies.hasOwnProperty(i)) {
          max = Math.max(max, frequencies[i]);
        }
    }
    console.log(frequencies);
  }

mean(list);
median(list);
mode(list);
}

 meanAndFriends([1,1,2,3,4,5,6,7,8,8,10,4,0,1,1,1,1]);

// Mean and Median both worked
// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)
//Status API Training Shop Blog About Pricing
