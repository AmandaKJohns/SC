$(document).ready(function(){
  $('.img-js').on('mouseenter', function(){
    $(this).animate({
      opacity: 0.5
    }, 'fast');
  })

  $('.img-js').on('mouseleave', function(){
    $(this).animate({
      opacity: 1
    }, 'fast');
  })

  $('.img-js').draggable();

  // $('.img-js').on('click', function(){
  //   $(this).toggle('slow', function(){
  //   });
  // })
})