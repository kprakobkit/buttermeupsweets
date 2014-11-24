$(document).ready(function() {
  $('#addItems').click(function() {
    $('.addItemsForm:last').clone().show().appendTo('.items');
  });

  $('.prod-desc').wrapInner("<span>");
});
