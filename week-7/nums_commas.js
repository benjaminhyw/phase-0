// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .
// separateComma(1569743) == "1,569,743"
// Pseudocode
// create function that adds commas into integer Numbers
// determine where commas should go



var separateComma = function(num) {
  var newString = '';
  num = String(num);
  if (num.length === 4)
    for(var i = 0; i < num.length; i++)
      if( i === 1)
        newString +=  ',' + num[i];
      else
        newString +=  num[i];
  else if (num.length === 5)
    for(var i = 0; i < num.length; i++)
      if( i === 2)
        newString +=  ',' + num[i];
      else
        newString +=  num[i];
  else if (num.length === 6)
    for(var i = 0; i < num.length; i++)
      if( i === 3)
        newString +=  ',' + num[i];
      else
        newString +=  num[i];
  else if (num.length === 7)
    for(var i = 0; i < num.length; i++)
      if( i === 1 || i === 4)
        newString +=  ',' + num[i];
      else
        newString +=  num[i];
  else if (num.length === 8)
    for(var i = 0; i < num.length; i++)
      if( i === 2 || i === 5)
        newString +=  ',' + num[i];
      else
        newString +=  num[i];
  else
    for(var i = 0; i < num.length; i++)
      newString +=  num[i];
    return newString;
};
console.log(separateComma(10000))



// Refactored Solution
var separateComma = function(num) {
  var newString = '';
  num = String(num);
  for(var i = 0; i < num.length; i++)
    if ( num.length - i === 4 || num.length - i === 7 || num.length - i === 10)
      newString += num[i] + ',';
    else
      newString += num[i];
    return newString;
};
console.log(separateComma(1532433));



// Your Own Tests (OPTIONAL)




// Reflection

What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
It's hard!  I feel like I just KINDA wrapped my head around ruby and now i'm trying to understand JS... it's scrambbling my brain a little
My pair took a stronger initiative because I didn't really know how to go about it and he felt a little more confortable, but i'd say 
yea we generally approached this a little differently.

What did you learn about iterating over arrays in JavaScript?
for loops are super useful during these, and we can write them in the ( ; ; )
  The part before the first semicolon initializes the loop, usually defining the variable.
  the second parrt is the expression that checks whether the loop must continue.
  the final part updates the state of the loop fter every iteration.

What was different about solving this problem in JavaScript?
I feel like this is just because we're still learning about JS but, since there isn't really a clear range function... to create something similar,
we can opt to something like OR, and that'll be the case for several different methods that we think COULD work like ruby but actually have no JS equivalent :(

What built-in methods did you find to incorporate in your refactored solution?
Our refactored version just used OR and .length, nothing else.





