// store string as a variable
// take said variable seperate each letter
// loop each letter in reverse
// add letters in reverse order back into single string

// code
function reverse(stuff) {
var string = stuff;
var length = string.length;
var reversed = "";
for (var i = length; i > 0; i-=1){
	(reversed += string[i-1]);}
	return reversed;
}


// // driver code
var hello = (reverse("Hello"));
// var Amanuel = (reverse("Amanuel"));

if (1 == 1) {
	console.log(hello);
}else{
	console.log("oops");}
