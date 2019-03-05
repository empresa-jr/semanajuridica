jQuery(document).ready(function ($) {

  //Voltar para o topo
  $(window).scroll(function () {
    if ($(this).scrollTop() > 100) {
      $('.voltar-topo').fadeIn('slow');
    } else {
      $('.voltar-topo').fadeOut('slow');
    }
  });
  $('.voltar-topo').click(function () {
    $('html, body').animate({
      scrollTop: 0
    }, 1500, 'easeInOutExpo');
    return false;
  });

  // Fixa barra ao topo
  
  $("#barramenu").sticky({
    topSpacing: 0,
    zIndex: '43'
  })
  
 
});
