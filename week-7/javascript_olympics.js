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