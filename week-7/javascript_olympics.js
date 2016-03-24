 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Release 1: Bulk Up
var athletes= [
  sarah = {
    name: 'Sarah Hughes',
    event: 'Ladies Singles'}, 
  Ben = {
    name: 'Benjamin R Flores', 
   event: 'Soccer match'
  },
  serena = {
    name: 'Serena Williams',
    event: 'US OPEN'
  }
];
        
 var checkAthletes = function(array){
  for (i = 0; i < array.length; i++)
    array[i].win = array[i].name + ' won the ' + array[i].event;
  return array;
}

console.log(checkAthletes(athletes));

//we define win as a function expression and not a function declaration
// because we're using win to add to the list 


// Release 2: Reverse
var reverseString = function(string){
  return string.split('').reverse().join('');
}
//.split creates an array, .reverse works only for arrays, .join 



// Jumble your words




// 2,4,6,8
var evenNumbers = function(array){
  var newArray = [];
  for (var i = 0; i < array.length; i++)
    if (array[i] % 2 === 0)
      newArray.push(array[i]);
  return newArray;
}

console.log(evenNumbers([2,7,8,18]));



// "We built this city"
function Athlete(name,age,sport,quote){
  this.name  = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};



// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// Creating variables/objects.. everything else I wouldn't exatly say I solidified,
// but more so clarified that I need a better understanding.

// What are constructor functions?
// A basic constructor function looks like this

// function myObject(){
 
// };

// You use constructor functions when you need to do some initial work before the object is created 
// or require multiple instances of the object where each instance can be changed during the lifetime of the script.


// How are constructors different from Ruby classes (in your research)?
// I had to look this up because I was unsure, and still unsure.  Found this link
// https://www.codecademy.com/forum_questions/5259d99780ff336c0e00656d
// which gave me this

// function Class() {
//     // constructor code block
//     // public and private stuff here
// }

// var myClass = new Class();

// In which the top is a constructor vs the bottom is a class.
// "We can programmatically create properties on any object we create with the constructor,
//  some of which can be class-wide, others specific to the instance."
// Whereas you add .property to Class ..


