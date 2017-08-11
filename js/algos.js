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
console.log(longest(["long phrase", "longest phrase", "longer phrase"]))

// write a function that takes two objects and checks to see if the objects share at least one key-value pair.

// yourFunction({name: "Steven", age: 54}, {name: "Tamir", age: 54});
// should equal 2

// psuedocode: takes two the object value's and store into 2 variables
// there should be an if/else statement, if the 2 variables at value are equal then puts true else statement is false

var object_1 = {name: "Steven", age: 54}
var object_2= {name: "Tamir", age: 54}

function are_they_same(object_1, object_2) {

	var first_item = object_1
	var second_item = object_2
if {first_item[0] == second_item[0] || first_item[1] == second_item[1]
console.log("true")
}else{
console.log("false")	
}


