$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them
  var option =  '<li class="option">Option Name: <input type="text" name="name"></li><br>'

  $('#add_option').on('click', function(){
    $('ul').append(option);
  });

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
