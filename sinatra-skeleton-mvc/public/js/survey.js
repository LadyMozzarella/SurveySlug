//put in view
function SurveyView(optionButton){
  this.optionButton = optionButton
}


SurveyView.prototype = {
  addOption: function(){
      $('ul').append(this.optionButton);
    }
}


//Survey object ---
function Survey(){
  this.options = [];
  this.questions = [];
  this.title = "";
}

Survey.prototype = {

  createSurvey: function(array){
    for(var i = 0; i < array.length; i++){
      if(array[i].name == "title"){
        this.title = array[i].value
      }
      else if(array[i].name == "prompt"){
        this.questions.push(array[i].value);
      }
      else {
        this.options.push(array[i].value)
      }
    }
  }
}
