// function greetOnLoad() {
// 	var name = prompt("Hi! What's your name?");
// 	var myElement = document.getElementById("greeting")
// 	myElement.innerHTML = "Hello " + name + ", it's nice to meet you!";
// }

// var style1 = true;

// function modifyColor() {
// 	if(style1) {
// 		document.getElementById("example").style.color = "red";
// 		document.getElementById("example").style.backgroundColor = "blue";
// 	} else {
// 		document.getElementById("example").style.color = "purple";
// 		document.getElementById("example").style.backgroundColor = "gray";
// 	}
// 	style1 = !style1;
// }

// greetOnLoad();

// //Selecting Nodes
// //get element by its id
// var username = document.getElementById('username');

// // get element by class
// var error = document.getElementsByClassName('error');

// //get element by its tag name
// var inputs = document.getElementsByTagName('input');

// //get elements by css selectors
// //querySelectorAll
// var inError = document.querySelectorAll('input.error'); //whole node list

// var firstButton = document.querySelector('button'); //only first item in node list

// //editing a node
// var link = document.querySelector('a');
// link.innerHTML = "TTS is cool";
// console.log(link.innerHTML);
// link.href = "https://youtube.com"
// link.style.color = "blue";
// link.style.fontSize = '40px';

// //add or remove nodes
// var newLi = document.createElement('li');
// newLi.innerHTML = "is super handsome";

// var list = document.querySelector('ul');
// list.appendChild(newLi);
// newLi.remove();

// //Events
// var paragraph = document.getElementById('example');
// // paragraph.addEventListener('click', function(event) {
// // 										alert("clicked!!!");
// // });

// paragraph.addEventListener('mouseover', function(event) {
// 										alert("over!!");
// });

// // jQuery
// var elements = $('p #my .css .query')

$('button').on('click', function(event){			//this refers to the element selected (button)
	this.innerHTML = "button clicked!";
});

//dom munipulation
$('button').on('click', function(event){
	//update button html
	$(this).html("button clicked");

	//create a new element
	var newLink = '<a href="https://techtalentsouth.com">Look at me!</a>';

	//append new element
	$('p').append(newLink);

	//add an attribute
	$('#newLink').attr({'target':'blank', 'href':'youtube.com'})
	// var newNewLink = document.getElementById('newLink');
	// newNewLink.innerHTML = "This is the link text";
	// newNewLink.target = "blank";

	//animation
	$('ul').slideToggle();

});

$(document).ready(function() {
	console.log('this runs second');
})

console.log('this runs first');