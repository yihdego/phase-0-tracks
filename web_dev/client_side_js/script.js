console.log("hello world");



function changefontitalic(event){
	event.target.style.fontStyle = "italic";	
}

var testing = document.getElementsByTagName('p');
var testingtext = testing[0];
testingtext.addEventListener("mouseover", changefontitalic);