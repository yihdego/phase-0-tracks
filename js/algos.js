// Write a funchtion that takes an array of words or phrases and returns the longest word or phrase in the array.

// if = ["long phrase", "longest phrase", "longer phrase"]
// returns "longest phrase"

// psuedocode: take an array and run a loop where it runs an loop from index
// from the loop it asks if the string length is longest then stored variable in if/else and if longer replace.
// stored variable should start at 0

function longest(array){
	// var run_logic = array;
	var long = '';
for (var i = 0; i < array.length; i++){
	if (array[i].length > long.length){
		long = array[i];
	}
}	return long;
}


// write a function that takes two objects and checks to see if the objects share at least one key-value pair.

// yourFunction({name: "Steven", age: 54}, {name: "Tamir", age: 54});
// should equal 2

// psuedocode: takes two the object value's and store into 2 variables
// there should be an if/else statement, if the 2 variables at value are equal then puts true else statement is false
var Steven = {name: "Steven", age: 54};
var Tamir = {name: "Tamir", age: 54};

function are_they_same(object_1, object_2) {

if ((object_1[0] == object_2[0])||(object_1[1] == object_2[1])){
  return console.log("true");
}else{
  return console.log("false");	
}
}


// Write a function that takes an interger for the length and builds and returns an array of strings
// of the given lengths. So if we ran your function with an argument of 3
// we would get an array of 3random words back. Words should be randomly varying length, 
// with a minimum of 1 letter or maximum of 10. random generator 

//psuedocode: function takes 1 variable of numbers. input an interger as a variable. make a variable in function of the alphabet.
// make a loop of the variable of the number. make a variable of an array that is the lenght of the initial input.
// in each part of the loop the loop there is a new variable of string with randomly determinded lenght of 1-10.
// random string is maybe initially initialized with ' ' and then is replaced with random characters in a variable of the alphabet.
// end loop portion of the loop by adding stringinto empty array until array is finished then return or print said array.
// new solution, make a loop where random letters are generated and inserted into a word string using word = word + letter

function randomword(){
	var word = '';
	for (var i = 0; i < (Math.floor(Math.random()*10)+1); i++){
	var alphabet = ('abcdefghijklmnopqrstuvwxyz'[Math.floor(Math.random()*25)]);
	word += alphabet;
}
return word;
}
function array(x){
	var array = [];
	for (var i = 0; i < x ; i ++){
	array.push(randomword());
}
return array;
}

// Driver Code
console.log(longest(["long phrase", "longest phrase", "longer phrase"]))
are_they_same(Steven, Tamir);
console.log(randomword());
console.log(array(3));

// Add driver code that does the following 10 times:
// generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.
var proof = array(10);
console.log(proof);
console.log(longest(proof));
