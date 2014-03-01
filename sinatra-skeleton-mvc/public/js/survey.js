//put in view
function SurveyView(elements){
  this.elements = elements;
}


SurveyView.prototype = {
  addOption: function(addButton) {
    $(addButton).before(this.elements.optionElement);
  },
  //$('.question').each(function() { console.log($(this).find(':input').serializeArray()); });
  addQuestion: function() {
    $('.question:last').after(this.elements.questionElement);
  }
}


//Survey object -----------------
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
