/*
User Stories written by Person 1 (Ben Flores)
Pseudocode written by Person 2 (Lisa Dannewitz)


---SUM---
1. As a user, I want to have a function called sum.
2. As a user, sum should give me the sum of ALL of the elements in an array that has an odd number of elements.
3. As a user, sum should give me the sum of ALL of the elements in an array that has an even number of elements.
Input: array of numbers
Output: integer
Steps:
-Define sum function
--Take input array and sum numbers
--Return sum




---MEAN---
4. As a user, I want to have a function called mean.
5. As a user, mean should give me the average of ALL of the elements in an array that has an odd number of elements.  I need an exact amount, not a rounded integer.
6. As a user, mean should give me the average of ALL of the elements in an array that has an even number of elements.  I need an exact amount, not a rounded integer.
Input: array of numbers
Output: float
Steps:
-Define mean function
--Store array length as elements variable
--Take input array and sum numbers
--Convert sum to float
--Divide sum by elements and store as mean variable
--Return mean


---MEDIAN---
7. As a user, I want to have a function called median.
8. As a user, median should give me the median value of ALL of the elements in an array that has an odd number of elements.
9. As a user, median should give me the median value of ALL of the elements in an array thta has an even number of elements.  I need an exact amount, not a rounded integer.
Input:
Output:
Steps:
-Define median function
--Take input array and sum numbers
--Convert sum to float
--Divide sum by two and store as median variable
--Return median


*/

//sum
function sum(array){
  var sum = 0;
  for (var counter = 0; counter < array.length; counter ++){
    sum += array[counter];
  }
  return sum;
}

console.log(sum([1,2,3,]))


//Mean
function mean(array){
  var elements = array.length
  var sum = 0;
  for (var counter = 0; counter < array.length; counter ++){
    sum += array[counter];
  }
  (sum).toFixed;
  var mean = sum/elements;
  return mean;
}
console.log(mean([1,2,3]))

//Median
function median(array){
  var sum = 0;
  for (var counter = 0; counter < array.length; counter ++){
    sum += array[counter];
    (sum).toFixed;
    var median = sum/2;
    return median;
  }
}
console.log(median([1,2,3]))

//SUMMARY************************
/*
When I received the tests, I ran them to see what tests passed and which ones failed.
The original version passed all tests for SUM and MEAN, but only the first test for MEDIAN.
The refactored version passed all tests for SUM AND MEAN, but oly the first two tests for MEDIAN.

Mentioned it to the group on our private slack channel, and they will take another look before submission.

We fixed the refactored version, so now everything runs!
*/

