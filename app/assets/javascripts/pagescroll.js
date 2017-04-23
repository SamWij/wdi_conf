function ready() {
  var isAnimating = false;

  $('.map-container')
	.click(function(){
			$(this).find('iframe').addClass('clicked')})
	.mouseleave(function(){
			$(this).find('iframe').removeClass('clicked')});

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
        isAnimating = false;
      });
    }
  });
};

$(document).on('turbolinks:load', ready);
