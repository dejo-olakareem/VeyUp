$(document).on("turbolinks:load", function(){
  hideCreateSurvey()

  // $('#cropbox').cropper({
  //   aspectRatio: 16 / 9,
  //   crop: function(e) {
  //     // Output the result data for cropping image.
  //     console.log(e.x);
  //     console.log(e.y);
  //     console.log(e.width);
  //     console.log(e.height);
  //     console.log(e.rotate);
  //     console.log(e.scaleX);
  //     console.log(e.scaleY);
  //   }
  // });

  // $(".fa-arrows").click(function(){
  //   $("#cropbox").cropper("setDragMode", "move")
  // });

  // $(".fa-crop").click(function(){
  //   $("#cropbox").cropper("setDragMode", "crop")
  // });

  // $(".fa-search-plus").click(function(){
  //   $("#cropbox").cropper("zoom", 0.1)
  // });

  // $(".fa-search-minus").click(function(){
  //   $("#cropbox").cropper("zoom", -0.1)
  // });

  // $(".fa-arrow-left").click(function(){
  //   $("#cropbox").cropper("move", -10, 0)
  // });

  // $(".fa-arrow-right").click(function(){
  //   $("#cropbox").cropper("move", 10, 0)
  // });

  // $(".fa-arrow-up").click(function(){
  //   $("#cropbox").cropper("move", 0, -10)
  // });

  // $(".fa-arrow-down").click(function(){
  //   $("#cropbox").cropper("move", 0, 10)
  // });

  // $(".fa-rotate-left").click(function(){
  //   $("#cropbox").cropper("rotate", -45)

  // });

  // $(".fa-rotate-right").click(function(){
  //   $("#cropbox").cropper("rotate", 45)
  // });

  // $(".fa-arrows-h").click(function(){
  //   $("#cropbox").cropper("scaleX", -1)
  // });

  // $(".fa-arrows-v").click(function(){
  //   $("#cropbox").cropper("scaleY", -1)
  // });

  // $(".fa-check").click(function(){
  //   $("#cropbox").cropper("crop")
  // });

  // $(".fa-remove").click(function(){
  //   $("#cropbox").cropper("clear")
  // });

  // $(".fa-lock").click(function(){
  //   $("#cropbox").cropper("disable")
  // });


  // $(".fa-unlock").click(function(){
  //     $("#cropbox").cropper("enable")
  //   });

  // $(".fa-refresh").click(function(){
  //     $("#cropbox").cropper("reset")
  //   });

  // $(".fa-power-off").click(function(){
  //     $("#cropbox").cropper("destroy")
  //   });

  // $(".fa-unlock").click(function(){
  //     $("#cropbox").cropper("enable")
  //   });



});


var hideCreateSurvey = function(){
  $("#create_survey").click(function(){
    $(this).hide();
  });
};


