$(document).on("turbolinks:load", function(){
  hideCreateSurvey()
});


var hideCreateSurvey = function(){
  $("#create_survey").click(function(){
    $(this).hide();
  });
};


