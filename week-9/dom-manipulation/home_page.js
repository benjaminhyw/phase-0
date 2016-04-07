// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:
document.getElementById("release-0").class = "done";

// Release 1:
document.getElementById("release-1").style.display = "none";

// Release 2:
document.getElementsByTagName('h1')[0].innerHTML = "I completed release 2.";

// Release 3:
document.getElementById('release-3').style.background = "#955251";

// Release 4:
var x = document.getElementsByClassName('release-4');
var i;
for (i = 0; i < x.length; i++){
	x[i].style.fontSize = "2em";
}

// Release 5:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));


// Reflection
/*
What did you learn about the DOM?
	It's fairly simple to use, you just have to know what to type.  Will require a 
	lot of method referencing initially.

What are some useful methods to use to manipulate the DOM?
	getElementBy_______ was hands down what we used the most.  Just know what
	you want to be using and make sure you type in the correct information.
	

*/



