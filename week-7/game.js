// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission:Collect 3 Gold stars to win.
// Goals: Move around the field to catch stars.  Be careful tho, red stars are lurking and those make you lose health!
// Characters:
// Objects: Gold Stars(+1), Red Stars(-1), Potion(.health +=10), Blue star(+3).
// Functions:move(direction), use(items)


// Pseudocode
// Create objects 
// These objects are:
// * Player (this is the object you move)
// * Health (Starts with 30, decreases with each red star you touch. 3 and it's game over.)
// * Gold Stars (They give you +10 points when you run into them.)
// * Red Stars (They give you -10 points when you run into them.)
// * Blue Star (If you find this one, you win!)
//
//
//
//

// // Initial Code
// var player = {
// 	posX:0,
// 	posY:0,
// 	star_value:0,
// 	health:30,
//   potion: false,
//   use: function(item){
//   if (item === 'potion'){
// 	player.health += 10;
// 	}
// 	},
  
// 	success: false,

// 	move: function(direction){
// 		if(direction === 'forward'){
// 			this.posX += 10;
// 		}
// 		else if (direction === 'back'){
// 			this.posX -= 10;
// 		}
// 		else if (direction === 'up'){
// 			this.posY += 10;
// 		}
// 		else if (direction === 'down'){
// 			this.posY -= 10;
// 		}
		
   
 
    
    
// 	// When player moves, so do the red, blue, and gold stars.

// 	// Quick notation on what the next code does:
// 	// The Math object allows us to perform matheatical tasks on numbers.
// 	// .floor is a round down function, so inside parenthesis we have
// 	// Math.floor(Math.random()*100);
// 	//.random generates a random number [several decimal points big] between 0-1
// 	// We multiply that *100 to bring it into the single/doble digit realm
// 	// It will still have decimals following, so that's why we need .floor.
// 	// Bringing it into the double digits allows us to then move our player using integers.
// // HOWEVER i also use .round because .round rounds to the nearest integer as opposed to rounding down
// //I use all that stuff to essentially work my number to generate a multiple of 10
// // Which I do because all of my player steps go by 10 so unless everything else does as well, 
// // They'll never touch and it'll be a very vry boringly long game.
  
//     potion.posX = (Math.round((Math.floor((Math.random()*100)+1)/10)) *10);
// 		potion.posY = (Math.round((Math.floor((Math.random()*100)+1)/10)) *10);
// 		console.log("There's a potion floating around!  Coordinates are: (" + potion.posX + "," + potion.posY + ")");

// 		blue_star.posX = (Math.round((Math.floor((Math.random()*100)+1)/10)) *10);
// 		blue_star.posY = (Math.round((Math.floor((Math.random()*100)+1)/10)) *10);
// 		console.log("Blue star sighted!  Coordinates are: (" + blue_star.posX + "," + blue_star.posY + ")");

// 		gold_star_1.posX = (Math.round((Math.floor((Math.random()*100)+1)/10)) *10);
// 		gold_star_1.posY = (Math.round((Math.floor((Math.random()*100)+1)/10)) *10);

// 		gold_star_2.posX = (Math.round((Math.floor((Math.random()*100)+1)/10)) *10);
// 		gold_star_2.posY = (Math.round((Math.floor((Math.random()*100)+1)/10)) *10);

// 		gold_star_3.posX = (Math.round((Math.floor((Math.random()*100)+1)/10)) *10);
// 		gold_star_3.posY = (Math.round((Math.floor((Math.random()*100)+1)/10)) *10);
// 		console.log("Gold stars here: " + "(" + gold_star_1.posX + "," + gold_star_1.posY + ")" + ", " + "(" + gold_star_2.posX + "," + gold_star_2.posY + ")" + ", " + "(" + gold_star_3.posX + "," + gold_star_3.posY + ")" + "!!");

// 		red_star_1.posX = (Math.round((Math.floor((Math.random()*100)+1)/10)) *10);
// 		red_star_1.posY = (Math.round((Math.floor((Math.random()*100)+1)/10)) *10);

// 		red_star_2.posX = (Math.round((Math.floor((Math.random()*100)+1)/10)) *10);
// 		red_star_2.posY = (Math.round((Math.floor((Math.random()*100)+1)/10)) *10);

// 		red_star_3.posX = (Math.round((Math.floor((Math.random()*100)+1)/10)) *10);
// 		red_star_3.posY = (Math.round((Math.floor((Math.random()*100)+1)/10)) *10);
// 		console.log("Uh oh! Red stars: " + "(" + red_star_1.posX + "," + red_star_1.posY + ")" + ", " + "(" + red_star_2.posX + "," + red_star_2.posY + ")" + ", " + "(" + red_star_3.posX + "," + red_star_3.posY + ")" + "!!");

		
// 		console.log("You are here: (" + player.posX + "," + player.posY + ")");

// 		//When player gets blue star, game ends because blue star has highest point.
// 		if(player.posX === potion.posX && player.posY === potion.posY){
// 			player.potion = true;
// 			console.log("Alright!! You found a potion!");
// 		}
// 		else if(player.posX === blue_star.posX && player.posY === blue_star.posY){
// 			player.star_value += 30;
// 			console.log("You got the blue star, congrats!!  You win!!");
//     }
// 		else if(player.posX === gold_star_1.posX && player.posY === gold_star_1.posY){
// 			player.star_value += 10;
// 			console.log("You found a gold star, awesome!!");
// 		}
// 		else if(player.posX === gold_star_2.posX && player.posY === gold_star_2.posY){
// 			player.star_value += 10;
// 			console.log("You found a gold star, awesome!!");
// 		}
// 		else if(player.posX === gold_star_3.posX && player.posY === gold_star_3.posY){
// 			player.star_value += 10;
// 			console.log("You found a gold star, awesome!!");
// 		}
// 		else if(player.posX === red_star_1.posX && player.posY === red_star_1.posY){
// 			player.star_value -= 10;
// 			player.health -= 10;
// 			console.log("Oh no!  Red star means you lose a gold star AND some health!!");
// 		}
// 		else if(player.posX === red_star_2.posX && player.posY === red_star_2.posY){
// 			player.star_value -= 10;
// 			player.health -= 10;
// 			console.log("Oh no!  Red star means you lose a gold star AND some health!!");
// 		}
// 		else if(player.posX === red_star_3.posX && player.posY === red_star_3.posY){
// 			player.star_value -= 10;
// 			player.health -= 10;
// 			console.log("Oh no!  Red star means you lose a gold star AND some health!!");
// 		}
//     	else if(player.star_value === 30){
//     		player.success = true;
// 			console.log("CONGRATS, YOU CAUGHT ENOUGH STARS!!");
// 		}
// 		else if(player.health === 0){
// 			console.log("You're dead, silly.  Game over!");
// 		}



// 	} //closes move function
// }; //closes var player


// var potion = {
// posX: (Math.round((Math.floor((Math.random()*100)+1)/10)) *10),
// posY: (Math.round((Math.floor((Math.random()*100)+1)/10)) *10),
// };

// var blue_star = {
// posX: (Math.round((Math.floor((Math.random()*100)+1)/10)) *10),
// posY: (Math.round((Math.floor((Math.random()*100)+1)/10)) *10)
// };

// var gold_star_1 = {
// posX: (Math.round((Math.floor((Math.random()*100)+1)/10)) *10),
// posY: (Math.round((Math.floor((Math.random()*100)+1)/10)) *10)
// };

// var gold_star_2 = {
// posX: (Math.round((Math.floor((Math.random()*100)+1)/10)) *10),
// posY: (Math.round((Math.floor((Math.random()*100)+1)/10)) *10)
// };

// var gold_star_3 = {
// posX: (Math.round((Math.floor((Math.random()*100)+1)/10)) *10),
// posY: (Math.round((Math.floor((Math.random()*100)+1)/10)) *10)
// };

// var red_star_1 = {
// posX: (Math.round((Math.floor((Math.random()*100)+1)/10)) *10),
// posY: (Math.round((Math.floor((Math.random()*100)+1)/10)) *10)
// };

// var red_star_2 = {
// posX: (Math.round((Math.floor((Math.random()*100)+1)/10)) *10),
// posY: (Math.round((Math.floor((Math.random()*100)+1)/10)) *10)
// };

// var red_star_3 = {
// posX: (Math.round((Math.floor((Math.random()*100)+1)/10)) *10),
// posY: (Math.round((Math.floor((Math.random()*100)+1)/10)) *10)
// };







// Refactored Code
var random_num =  (Math.round((Math.floor((Math.random()*100)+1)/10)) *10);

var player = {
	posX:0,
	posY:0,
	star_value:0,
	health:30,
  	potion: false,
  	use: function(item){
  		if (item === 'potion'){
			player.health += 10;
		}
	},
	success: false,
	move: function(direction){
		if(direction === 'forward'){
			this.posX += 10;
		}
		else if (direction === 'back'){
			this.posX -= 10;
		}
		else if (direction === 'up'){
			this.posY += 10;
		}
		else if (direction === 'down'){
			this.posY -= 10;
		}
		
  	//Quick note that this var random_num WAS specific to the everything within the player variable
    // //var random_num = (Math.round((Math.floor((Math.random()*100)+1)/10)) *10);
    //There WAS another down below, same thing.. but then I simply moved the var random_number to the very 1st variable we create so I can use that information anywhere basically :P
    	potion.posX = random_num;
		potion.posY = random_num;
		console.log("There's a potion floating around!  Coordinates are: (" + potion.posX + "," + potion.posY + ")");

		blue_star.posX = random_num;
		blue_star.posY = random_num;
		console.log("Blue star sighted!  Coordinates are: (" + blue_star.posX + "," + blue_star.posY + ")");

		gold_star_1.posX = random_num;
		gold_star_1.posY = random_num;

		gold_star_2.posX = random_num;
		gold_star_2.posY = random_num;

		gold_star_3.posX = random_num;
		gold_star_3.posY = random_num;
		console.log("Gold stars here: " + "(" + gold_star_1.posX + "," + gold_star_1.posY + ")" + ", " + "(" + gold_star_2.posX + "," + gold_star_2.posY + ")" + ", " + "(" + gold_star_3.posX + "," + gold_star_3.posY + ")" + "!!");

		red_star_1.posX = random_num;
		red_star_1.posY = random_num;

		red_star_2.posX = random_num;
		red_star_2.posY = random_num;

		red_star_3.posX = random_num;
		red_star_3.posY = random_num;
		console.log("Uh oh! Red stars: " + "(" + red_star_1.posX + "," + red_star_1.posY + ")" + ", " + "(" + red_star_2.posX + "," + red_star_2.posY + ")" + ", " + "(" + red_star_3.posX + "," + red_star_3.posY + ")" + "!!");

		
		console.log("You are here: (" + player.posX + "," + player.posY + ")");

		//When player gets blue star, game ends because blue star has highest point.
		if(player.posX === potion.posX && player.posY === potion.posY){
			player.potion = true;
			console.log("Alright!! You found a potion!");
		}
		else if(player.posX === blue_star.posX && player.posY === blue_star.posY){
			player.star_value += 30;
			console.log("You got the blue star, congrats!!  You win!!");
    }
		else if((player.posX === gold_star_1.posX && player.posY === gold_star_1.posY) || (player.posX === gold_star_2.posX && player.posY === gold_star_2.posY) || (player.posX === gold_star_3.posX && player.posY === gold_star_3.posY) ){
			player.star_value += 10;
			console.log("You found a gold star, awesome!!");
		}
		else if((player.posX === red_star_1.posX && player.posY === red_star_1.posY) || (player.posX === red_star_2.posX && player.posY === red_star_2.posY) || (player.posX === red_star_3.posX && player.posY === red_star_3.posY) ){
			player.star_value -= 10;
			player.health -= 10;
			console.log("Oh no!  Red star means you lose a gold star AND some health!!");
		}
    else if(player.star_value === 30){
      player.success = true;
			console.log("CONGRATS, YOU CAUGHT ENOUGH STARS!!");
		}
		else if(player.health === 0){
			console.log("You're dead, silly.  Game over!");
		}



	} //closes move function
}; //closes var player


var random_num =  (Math.round((Math.floor((Math.random()*100)+1)/10)) *10);

var potion = {
posX: random_num,
posY: random_num,
};

var blue_star = {
posX: random_num,
posY: random_num
};

var gold_star_1 = {
posX: random_num,
posY: random_num
};

var gold_star_2 = {
posX: random_num,
posY: random_num
};

var gold_star_3 = {
posX: random_num,
posY: random_num
};

var red_star_1 = {
posX: random_num,
posY: random_num
};

var red_star_2 = {
posX: random_num,
posY: random_num
};

var red_star_3 = {
posX: random_num,
posY: random_num
};








// Reflection
// What was the most difficult part of this challenge?
// Oh my god where to begin.
// I at first had trouble just understanding how to make things.
// I used the example solution as a heavy reference and just couldn't figure out correct syntax with certain things.
// I think the most difficult thing though might've been allowing potions to work only after encountering..
// I could't figure it out.  So my player has infinite potions if they just keep using player.use('potion')
// Otherwise, I had a hard time just figuring out how to have multiple functions within the same variable.
// The answer: SYNTAX!  One little comma makes a huge difference.

// What did you learn about creating objects and functions that interact with one another?
// Order kinda helps.  As in, I first had var random_num both inside and outside the player variable but then realized
// I could access all that by simply placing that var random_number before everything else... so I made it my first object (and used it throughout the rest)


// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// Yea, I learned about the Math object, which meant .floor which means round down and .round which means round to nearest integer.
// The provided math code from the example gave us numbers that would never really work with the step value the player took, so I had to use both .floor and .round
// to eventually get all my objects to move with the same 10 frame.



// How can you access and manipulate properties of objects?
// you can call on them by typing in variable.property('value')
// I'm not sure those are the correct terms in that example but like
// player.health for example gives you the hp status of your character
// player.move('up') moves your character in a given direction
// player.use('potion') drinks the potion which then increases health, etc




