$(document).on("turbolinks:load", function(){
  goin()
  // checked()
  example()
  // clickoncoco()

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


// var checked = function(){
//   var i = 0
//   var rating = $('.rator').first().text()
//   var rate = parseFloat(rating);
//   while(i < rate){
//     $('#' + i).addClass("checked")
//     i++
//   }
// }


var example = function(){
var rating = $('.rator')
for (var index = 0; index < rating.length; index++) {
  console.log(rating[index].innerHTML)
  //   $('#' + i).addClass("checked")

  // var i = 0
  // while(i < rating[index].innerHTML){
  //     console.log("add class to element")
  //   $('#' + i).addClass("checked")
  //   i++
  // }
}
}
