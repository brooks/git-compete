// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$('document').ready(function(){
  var spinner = new Spinner().spin()
  $('#fetch-users-form').submit(function() {
    $('#git-compare').html(spinner.el);
  });
})