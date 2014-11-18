$(document).ready(function() {
  $('#addItems').click(function() {
    $('.addItemsForm:last').clone().show().appendTo('.items');
  });
  
  var windowHeight = $(window).height();

  $('.button-down').click(function(){
    $('html,body').animate({ scrollTop: windowHeight}, 600);
    return false;
  });

  $('.button-down2').click(function(){
    $('html,body').animate({ scrollTop: 2*windowHeight}, 600);
    return false;
  });
});
