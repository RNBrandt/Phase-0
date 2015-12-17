// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM


//RELEASE 3:
 bodyElement = $('body')

$('body>h1').css({ "color": "red", 'border': '5px dotted black', 'visibility': 'visible'});
$('.mascot > h1').html("Chorus Frogs")

//RELEASE 4: Event Listener
  // Add the code for the event listener here

$('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://dailypicksandflicks.com/wp-content/uploads/2011/08/Drunk-Frog.jpg')
  })

$('img').on('mouseout', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  })
//RELEASE 5: Experiment on your own

$('body > h1').animate({'border-width': '80px'} )




})  // end of the document.ready function: do not remove or write DOM manipulation below this.
