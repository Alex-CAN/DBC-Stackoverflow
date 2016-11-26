$(document).ready(function() {
  event.preventDefault();
  $('.tab-content').hide()
  $('.tabs a').on('click', function(){
  var tabID = $(this).attr('href');
  $('.tab-content').hide()
  $(tabID).show();
  });

  
});

// $(document).ready(function () {
//   event.preventDefault();
//   $('.tabs a').on('click', function() {

//   var tabID = $(this).attr('href');
//     $('.tab-content').hide()
//     $(tabID).show();
//     $('.tabs li').removeClass('active');
//     // debugger;
//     $(this).parent().addClass('active');
//     // $(this).attr('href').show ();


//   });
// });