console.log("hello world");



function changefontitalic(){
	var testing = document.getElementsByTagName('p');
	var testingtext = testing[0];
	testingtext.style.fontStyle = "italic";	
}

var testing = document.getElementsByTagName('p');
var testingtext = testing[0];
testingtext.addEventListener("mouseover", changefontitalic);