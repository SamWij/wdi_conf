$(function() {
  var isAnimating = false;

  $(document).scroll(function(element){
    var scrollDetect = element.currentTarget.scrollingElement.scrollTop
    if(scrollDetect>0){
      $('#scroll-button').removeClass('animated flipOutX').addClass('animated flipInX');
    }else if(scrollDetect<=0){
      $('#scroll-button').removeClass('animated flipInX').addClass('animated flipOutX');
    }
  });

  $('#scroll-button').on('click', function(){
    if (!isAnimating) {
      isAnimating = true;

      $("body").animate({ scrollTop: 0 }, 600, function(){
        console.log("never ending")
        isAnimating = false;
      });
    }
  });
});
