$(document).ready(function() {

  var option =  '<li class="option">Option Name: <input type="text" name="option[]"></li><br>'
  var surveyView = new SurveyView(option);

  $('#add_option').on('click', function(){
    surveyView.addOption();
  });

  //ajax stuff
  // $('#create_survey').submit(function(e){
  //   e.preventDefault();
  //   //initialize survey object
  //   //create survey --- fun js stuff
  //   var survey = new Survey();
  //   var surveyArray = $(this).serializeArray();
  //   survey.createSurvey(surveyArray)

  //   //for ajax request
  //   var serialized = $(this).serialize();

  //     $.post('/surveys', serialized, function(response){

  //   })
  // })

});

