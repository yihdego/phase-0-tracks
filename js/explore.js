// store string as a variable
// take said variable seperate each letter
// loop each letter in reverse
// add letters in reverse order back into single string

// code
function reverse(stuff) {
var string = stuff;
var length = string.length
var reversed = ""
for (var i = length; i > 0; i-=1){
	(reversed += string[i-1]);
}
console.log(reversed)
}


// driver code
reverse("Hello")
reverse("Amanuel")