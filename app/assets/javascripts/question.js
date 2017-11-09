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
    console.log("guilt")
    var targetHeart = $(this).parent().find('.fa-heart')
    var heartsInTargetContainer = $(this).closest('.container').find('.fa-heart')

    if (targetHeart.hasClass('yellow')) {
      targetHeart.removeClass('yellow')
    } else {
      heartsInTargetContainer.removeClass('yellow')
      targetHeart.addClass('yellow')
    }

    // $(this).siblings().children("span").toggleClass("yellow")
  });
};

