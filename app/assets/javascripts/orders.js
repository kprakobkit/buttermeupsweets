$(document).ready(function() {
  $('#addItems').click(function() {
    $('.addItemsForm:last').clone().show().appendTo('.items');
  });

  $('.prod-desc, .taking-orders').wrapInner("<span>");
});
