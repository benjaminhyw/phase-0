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