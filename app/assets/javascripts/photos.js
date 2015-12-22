$(document).ready(function(){
  
  $('.img-js').on('mouseenter', function(){
    $(this).animate({
      opacity: 0.5
    }, 'fast');
    $(this).toggleClass('large-js');
  })

  $('.img-js').on('mouseleave', function(){
    $(this).animate({
      opacity: 1
    }, 'fast');
    $(this).toggleClass('large-js');
  })

})