$(document).on("turbolinks:load", function(){
  goin()
  $('#datepicker').datepicker();

 $(function () {
      $('#datetimepicker1').datetimepicker({
      });
  });

});

var goin = function(){
  $("#coco").on("click",function(e){
    var className = $('#navcol-1').attr('class')
    if (className.includes('in')) {
      $('#navcol-1').removeClass('in');
    } else {
      $('#navcol-1').addClass('in');
    }

  })
}

