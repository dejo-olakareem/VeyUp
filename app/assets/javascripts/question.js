$(document).on("turbolinks:load", function(){
  hideCreateSurvey()
  like()
});


var hideCreateSurvey = function(){
  $("#create_survey").click(function(){
    $(this).hide();
  });
};

var like = function(){
  $(".like").click(function(){
    console.log("vibe");
    $(this).siblings().children("span").css( "color", "red" )
  });
};

