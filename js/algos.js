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

function random10{
return Math.floor(Math.random()*10)+1;
};


// Driver Code
console.log(longest(["long phrase", "longest phrase", "longer phrase"]))
are_they_same(Steven, Tamir);
console.log(function random10);