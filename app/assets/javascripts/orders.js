$(document).ready(function() {
  console.log('load');
  $('#addItems').click(function() {
    $('.addItemsForm:last').clone().show().appendTo('.items');
  });
});
