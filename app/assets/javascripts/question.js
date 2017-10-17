$(document).ready(function(){
  setNewQuestionListener();
});

var setNewQuestionListener = function(){


  $('#add-question').on('click', function(){
    $('#question-holder').prepend("what is this")

  });
};
