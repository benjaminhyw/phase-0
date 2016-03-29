/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

// var gradebook = {
//   Joseph:{
//     testScores:scores[0]
    
//   },
//   Susan:{
//     testScores:scores[1]
    
//   },
//   William:{
//     testScores:scores[2]
    
//   },
//   Elizabeth:{
//     testScores:scores[3]
    
//   },
//   addScore: function(name, score){
  
//      gradebook[name]['testScores'].push(score);
//   },
//   getAverage: function(name){
//     return average(gradebook[name]['testScores']);
  
//   }
  

// }
  
// function average(array){
//   var sum = 0;
//   var avg = 0;
//   for (var i =0; i < array.length; i++){
//     sum += array[i];
//     avg = sum / array.length;
//   }
//   return avg; 
// };


  

// Release 7: Modify your getAverage Function
// Modify getAverage so that it accepts a name as a String (e.g., "Joseph")
// and returns that student's average score. 
//Use the average function you just created.

// assert(
//   (gradebook.getAverage("Joseph") === 80),
//   "gradebook's getAverage should return 80 if passed 'Joseph'.",
//   "9. "
// )


// __________________________________________
// Refactored Solution

var gradebook = {
  Joseph:{
    testScores:scores[0]
    
  },
  Susan:{
    testScores:scores[1]
    
  },
  William:{
    testScores:scores[2]
    
  },
  Elizabeth:{
    testScores:scores[3]
    
  },
  addScore: function(name, score){
  
     gradebook[name]['testScores'].push(score);
  },
  getAverage: function(name){
    return average(gradebook[name]['testScores']);
  
  }
  

}
  
function average(array){
  var elements = array.length;
  var sum = array.reduce(function(previous, current) {return previous + current});

  return sum/elements;
}







// __________________________________________
// Reflect

// What did you learn about adding functions to objects?
// Just follow correct notation, but it's pretty straightforward.
// A basic function looks like:
// function(input){
//   What you want your function to do
// }

// How did you iterate over nested arrays in JavaScript?
// scores[index_num]
// Which is essentially, scores is the variable but also the name of the first array, index_num we use to acess values from the array inside

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
// .reduce in our refactor.
// array on the left, array.reduce returns back once number.  You set instructions on how to return within parenthesis.
// so in our case, we had a function with inputs previous and current, we then tell it to give us the sum of those inputs.
// We put that in a variable so we can then just keep working with variables.






// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)

