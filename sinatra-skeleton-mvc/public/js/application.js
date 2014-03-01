$(document).ready(function() {

//  var option =  '<li class="option">Option Name: <input type="text" name="option[]"></li><br>'
  var option = '<label class="option">Option Name:</label> <input type="text" name="option[]"><br>';
  var question = '<hr><div class="question"><label>Question:</label> <input type="text" name="prompt"><br><label class="option">Option Name:</label> <input type="text" name="option[]"><br><button class="add_option" type="button">Add Another Option</button></div>';

  var surveyView = new SurveyView({
    optionElement: option,
    questionElement: question
  });

  $('.add_option').on('click', function() {
    surveyView.addOption(this);
  });

  $('.add_question').on('click', function() {
    surveyView.addQuestion();
  });

});

