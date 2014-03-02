/////////Ivan messed with this part. It grabs the value of the element 
// selected and then the value can get appended to the form for now. But
// we need to save it to the database. Ask Ivan if you have questions 

var myBtn = document.getElementById('submit_response');


myBtn.addEventListener('click', function(event) {
  mySelection = document.querySelector('input[name="option"]:checked').value;
  document.getElementById("demo").innerHTML=mySelection;
  
});


//Ivans mess is done here





//put in view
function SurveyView(elements){
  this.elements = elements;
}


SurveyView.prototype = {
  addOption: function(addButton) {
    $(addButton).before(this.elements.optionElement);
  },
  addQuestion: function() {
    $('.question:last').after(this.elements.questionElement);
  },
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
