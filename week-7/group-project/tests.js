
// Add the finished solution here when you receive it.
//sum

//sum
// As a user, I want to take a list of numbers and add all of the elements in that list 
// together to produce a sum.
function sum(array){
  return array.reduce(function(previous, current) {return previous + current}, 0); 
}

console.log(sum([1,2,3,4,5,6,7,8,9,10,11]))


//Mean
// As a user, I want to be able to find the arithmetic mean of a list of numbers, 
// defined as the sum of all the numbers in thelist divided by the number of numbers
// in the list.

function mean(array){
  var elements = array.length;
  var sum = array.reduce(function(previous, current) {return previous + current}, 0);

  return sum/elements;
}
console.log(mean([1,2,3,4,5,6,7,8,9]))

//Median
// As a user, I want to be able to find the median number in a list of numbers, defined
// as the numbers that separates the upper half of the list from the lower half, if the 
// the list of numbers is ordered.
function median(array){
  array.sort(function(a, b) {return a - b})
  var half = Math.floor(array.length / 2)
  if (array.length % 2 !== 0) {
    var median = array[half]
  } else {
    median = (array[half] + array[half - 1]) / 2.0
  }
  return median
}
console.log(median([1,2,3,4,5,6,7,8,9,10]))
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