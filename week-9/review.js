//Calculate the Mode (most frequent item)

//PSEUDOCODE

/*
Input: Collection of numbers
Output: The most frequent number in the collection


Create new collection of key-value pairs to hold the numbers and their frequency
FOR each number in the array
	IF current number already exists in array,
		increase frequency by 1
	ELSE
		add that number to the array, along with a corresponding frequency of 1
	ENDIF
ENDFOR

Assign highest frequecy is 0 (for intiial purposes)

FOR each number in array
	IF number's frequency is greater than highest frequency
		SET the new highest to the numbers corresponding frequency
	ENDIF
ENDFOR

Create new array to hold mode
FOR each number in array
	IF current number's frequency is = to highest frequency
	Add current number to collection to hold mode
	ENDIF
ENDFOR

RETURN mode of array

*/


function findMode(collection){
	var frequency = {};
	for (var number of collection){
		if (frequency.hasOwnProperty(number))
			frequency[number]++;
		else
			frequency[number] = 1;
	}

	var highest = 0;
	for (var number in frequency) {
		if (frequency[number] > highest)
			highest = frequency[number];
	}

	var mode = [];
	for (var number in frequency){
		if (frequency[number] == highest)
			mode.push(number);
	}

	return mode;
}

//Driver Test
var arrays = [[1, 2, 3, 4, 5], 
			[2,3,4,2,3,4,4,5,4],
			[5,6,8,3,5,7,3,5,7,4,3,2],
			 [-1,-2,-1,-5,0,1,2,3,4,5]];						  

for (var array of arrays) {
	console.log(findMode(array));
}


//REFACTOR
/*
I didn't refactor because I couldn't see how to further simplify this
*/

/*
What concepts did you solidify in working on this challenge? 
Writing functions, for/if statements

What was the most difficult part of this challenge?
It was hard getting started.  Like, I wasn't sure how to initially approach this.
I realize I still have trouble figuring out how to crack things and I doubt myself when
attempting things.  I know I just need to have a go and see what works/doesn't but, yeah.

Did you solve the problem in a new way this time?
Yea kind of.  This one didn't include any built in methods mostly because they don't really exist in JS.


Was your pseudocode different from the Ruby version? What was the same and what was different?
Yea, when I did this challenge back in ruby I didn't really pseudocode all that much. I took my time doing this 
one's pseudocode though because I felt iffy on starting without it.

*/


