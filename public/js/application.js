$(document).ready(function() {
  event.preventDefault();
  $('.tab-content').hide()
  $('.tabs a').on('click', function(){
  var tabID = $(this).attr('href');
  $('.tab-content').hide()
  $(tabID).show();
  });

  $('#registration, form').on('submit', function(){
  event.preventDefault();
  var $reg_form = $(this);
      var method = $reg_form.attr('method');
      var action = $reg_form.attr('action');
      var data = $reg_form.attr('submit');

  console.log(data)
  console.log(action)
    $.ajax({
      urls: action,
      method: method,
      data: data
      }).done(function(response) {
      });
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