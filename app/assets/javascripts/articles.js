// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

document.addEventListener("DOMContentLoaded", function(event) {






  setInterval(function(){
    var timeRemaining = document.querySelectorAll('.time_left')

    for (var i = 0; i < timeRemaining.length; i++)
      {timeRemaining[i].innerText = parseInt(timeRemaining[i].innerText) - 1;}
    }, 1000);

  


});
