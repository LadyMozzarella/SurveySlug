$(document).ready(function() {
  var option = '<label class="option">Option Name:</label> <input type="text" name="questions[]option[]"><br>';
  var question = '<hr><div class="question"><label>Question:</label> <input type="text" name="questions[][prompt]"><br><label class="option">Option Name:</label> <input type="text" name="questions[]option[]"><br><button class="add_option" type="button">Add Another Option</button></div>';

  var surveyView = new SurveyView({
    optionElement: option,
    questionElement: question
  });

  $('#create_survey').on('click', '.add_option', function() {
    surveyView.addOption(this);
  });

  $('.add_question').on('click', function() {
    surveyView.addQuestion();
  });
});

