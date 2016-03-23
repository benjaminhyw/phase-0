// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var hours_of_sleep = 8
var snooze = 1
hours_of_sleep = hours_of_sleep + snooze
connsole.log(hours_of_sleep)


prompt("What is your favorite food?", "My favorite food is");
alert("Hey!  That's my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
for (var line = "#"; line.length < 8; line += "#")
  console.log(line);


// Functions

// Complete the `minimum` exercise.
function min(a,b){
	if (a < b)
      return a
    else if (b<a)
      return b
}



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me ={
	name: "Ben",
	age: 24,
	favorite_foods: ["Sushi", "Burritos", "Pasta"],
	quirk: "I am right handed but write like a lefty"
}








//*******************************************************************************************
//Everything below isn't required in this eloquent.js file, these are my answers to the reading questions.
//I'm including them here so I have them both locally and in Github, because this was a lot just enter in the submission and not save elsewhere lol.

// Introduction (Links to an external site.)
// Did you learn anything new about JavaScript or programming in general?
// 	I learned that Java and JavaScript are completely unrelated.  Also JavaScript doesn't point out errors, which will probably make things complicated.
// Are there any concepts you feel uncomfortable with?
// 	Nope, not from the introduction.

// Ch. 1: Values, Types, and Operators (Links to an external site.)
// Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
// numbers
// 	They're still integers, fractions are presented with decimals, every character takes up memory and you should think of numbers as approximations more than accurate representations.

// arithmetic
// 	Operators are still called that, they work exactly the same as in Ruby.  Add parenthesis if you want ot change the precedence, and the % is referred to as "remainder" in JS as opposed to "modlus" in Ruby.
// 	Special numbers exist: Infiinty, -Infiinty, and NaN (which means Not a Number, the result of doing something like Infinity - Infinity or anything that isn't precise)

// strings 
// 	You can use quotes (double or single) for strings.  If you want quotes inside a quote you need to use the backslash to indicate the following character is a special character.
// 	Strings have to be written on a single sentence so if you want a new line it add \n directly in front of where you want it to start. \t creates a tab.
// 	You can't use math operators on a string except for +, which just concatenates (glues strings together).  Example: "con" + "cat" + "e" + "nate" = "concatenate"
// 	When comparing strings example ("word">"WORD"), capital letters are considered lesser and JS compares numeric code of each character from left to right.

// booleans
// 	They still return wether something is true or false.
// various operators
// 	logical operators: &&, ||, ! (meaning: and, or, not).  Pretty much work the same way as in ruby, the ! is placed in front of values.  Is not considered a bang (at least not yet) 
// 	arithmetic operators still work the same more or less



// Ch. 2: Program Structure (Links to an external site.)
// What is an expression?
// 	An expression is a fragment of code that produces a value.

// What is the purpose of semicolons in JavaScript? Are they always required?
// 	A semicolon indicates the end of the statement in JavaScript.  They are not always required, but the book will elaborate on that later.
// 	So I guess for right now we should just always end with them, otherwise the next line will be treated as part of the same statement.

// What causes a variable to return undefined?
// 	Asking for the value of an empty variable returns undefined.

// Write your own variable and do something to it in the eloquent.js file.
// 	var hours_of_sleep = 8
// 	var snooze = 1
// 	hours_of_sleep = hours_of_sleep + snooze
// 	connsole.log(hours_of_sleep)

// What does console.log do and when would you use it? What Ruby method(s) is this similar to?
// 	console.log is a function that outputs values.  This is kinda like p, puts, print, return (?) in Ruby.

// Write a short program that asks for a user to input their favorite food. 
// After they hit return, have the program respond with "Hey! That's my favorite too!" 
// (You will probably need to run this in the Chrome console (Links to an external site.) 
// rather than node since node does not support prompt or alert). 
// Paste your program into the eloquent.js file.

// prompt("What is your favorite food?", "My favorite food is");
// alert("Hey!  That's my favorite too!")


// Describe while and for loops
// A while loop looks like this:
// while (number <= 12) {
// 	console.log(number);
// 	number = number + 2;
// }
// While loops basically continue looping as long as the information inside the paranthesis remains true.
// the for loop would look like:
// for (var number = 0; number <= 12; number = number + 2)
// 	console.log(number);
// Two semicolons are needed within the parenthesis.  (part1 ; part2 ; part3)
// In that example part1 is where you initialize the loop, part2 checks the loop, part3 updates the state of the loop after each iteration.

// What other similarities or differences between Ruby and JavaScript did you notice in this section?
// 	Indenting code is still encouraged, there are several ways to modify things but rather than adding a .method like in ruby we add the Function(variable,method, whatever)
// 	No spaces in variable names, use of if statements is similar. Comments work the same way except by using // instead of #
// 	/* you can also use the notation around this block of text
// 	you can have as many lines in between this, whereas // only comments out that one individual line 
// 	*/

// Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.

// for (var line = "#"; line.length < 8; line += "#")
//   console.log(line);




// Ch. 3: Functions (Links to an external site.) (Skip the sections on closure and recursion)
// What are the differences between local and global variables in JavaScript?
// 	Local variables are created inside functions and are newly created every time the function is called.
// 	Gobal variables are created outside functions and can be accessed within functions as long as there isn't another variable with the same name.

// When should you use functions?
// 	You should use functions whenever you want to perform a task.

// What is a function declaration?
// 	Function declaration is kind of a short way of assigning funcitons to variables.
// 	So for example, rather than 
// 	var square = function(x){
// 		return x*x;
// 	}

// 	you could instead do
	
// 	function square(x){
// 		return x*x;
// 	}

// 	It's just a cleaner way to code.



// Complete the minimum exercise in the eloquent.js file.

// function min(a,b){
// 	if (a < b)
//       return a
//     else if (b<a)
//       return b
// }


// Ch. 4: Data Structures: Objects and Arrays (Links to an external site.) 
// Skip the sections on the Lycanthrope's log, Computing Correlations, 
// and sections from Further Arrayology to the Global Object, but read the chapter summary.

// What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
// Dots require that the part after the dot be a valid variable name.  
// Meaning, in example value.x , x is a defined variable and we fetch the property of the value named 'x'.
// Brackets try to evaluate what's within them to then use the result as the property name.

// Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.
// var me ={
// 	name: "Ben",
// 	age: 24,
// 	favorite_foods: ["Sushi", "Burritos", "Pasta"],
// 	quirk: "I am right handed but write like a lefty"
// }


// What is a JavaScript object with a name and value property similar to in Ruby?

// Variables



