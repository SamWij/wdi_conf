$(function(){
  var conferenceDate = [22,5,17,9,0,0];
  var $countdown = $('.countdown-container');
  var $timeLeft = $('<p>').addClass('spin timeLeft');
  setInterval(timeDifference,1000);

  function timeDifference(){
    var dateNow = new Date;

    if (conferenceDate[1]>(dateNow.getMonth()+1)){
      var months = conferenceDate[1] - dateNow.getMonth()-1;
      var dateString = dateDiff(months,dateNow);
    } else if (conferenceDate[1]===(dateNow.getMonth()+1 )&& conferenceDate[2]>=dateNow.getDate() && conferenceDate[3]>=dateNow.getHours() && conferenceDate[4]>=dateNow.getMinutes() && conferenceDate[5]>=dateNow.getSeconds()){
      var dateString = dateDiff(0,dateNow);
    } else {
      var dateString = "Conference is now on!"
    }

    function dateDiff(months,dateNow){
      return ((months*30)+(30-dateNow.getDate())) + " days " +
                        (24-dateNow.getHours()) + " hours " +
                        (60-dateNow.getMinutes()) + " minutes " +
                        (60-dateNow.getSeconds()) + " seconds";
    }

    $timeLeft.text(dateString);
    $countdown.append($timeLeft);

  }

});
