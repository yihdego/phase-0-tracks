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