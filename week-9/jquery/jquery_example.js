// U3.W9:JQuery


// I worked on this challenge with: Chand.
// This challenge took me 1 hours.

$(document).ready(function(){

$('body').css({'background-color': 'pink'});

//Selecting elements with jQuery (create variables)
var $bodyElement = $('body');
var $mascot = $(".mascot");

// Add code here to modify the css and html of DOM elements
$("body h1").css({color: "blue", 
	"border-style": "solid", 
	visibility: "visible"});
$(".mascot h1").html("Fiery Skippers");

// Modify elements with jQuery and
// Have some fun(experiment on own) - added an animate function

$('img').mouseover(function(e){
    e.preventDefault()
    $(this).attr('src', 'http://www.ukbutterflies.co.uk/phpBB/gallery/images/upload/f8e34e415f8e678e2992b9b8efd65243.jpg');
    $(this).animate({
        width: '50%',
        opacity: '50%'
         }, 1500 );
  })
$('img').mouseleave(function(){
	$(this).attr("src", "dbc_logo.png")
  });
})  // end of the document.ready function: do not remove or write DOM manipulation below this.

//Reflect
//What is jQuery?
//jQuery is a javaScript library used to manipulate HTML and CSS on websites to make them more dynamic.

//What does jQuery do for you?
//jQuery simplifies adding javaScript code and functions to websites. By using the rich library a developer is able to more easily manipulate a HTML page in ways that would be difficult with just HTML or CSS.

//What did you learn about the DOM while working on this challenge?
//By using the Console within the DOM we were able to access objects and variables and see what they were.