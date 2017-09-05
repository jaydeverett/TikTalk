// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

document.addEventListener("DOMContentLoaded", function(event) {






  setInterval(function(){
    var timeRemaining = document.querySelectorAll('.time_left')





    for (var i = 0; i < timeRemaining.length; i++)
      {
          var date = new Date(null);
        console.log(timeRemaining[i])
        var seconds = new Date('1970-01-01T' + timeRemaining[i].innerText + 'Z').getTime() / 1000;

        date.setSeconds(seconds - 1);
        console.log(parseInt(seconds))
        date.toISOString().substr(11, 8);

        if (seconds < 1502) {

          timeRemaining[i].style.color = '#f4ce42';
        }
        if (seconds < 602) {
          timeRemaining[i].style.color = '#ea3225';
        }
        if (seconds === 2) {
          var timeBox = document.querySelectorAll('.container-fluid') {
            for (var i = 0; i < timeBox.length; i++) {
              timeBox[i].style.display = 'none';
            }
        timeRemaining[i].innerText =   date.toISOString().substr(11, 8);}
    }, 1000);




});
