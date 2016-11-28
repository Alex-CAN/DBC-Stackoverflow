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
      $('.tab-content').hide()
  console.log(method)
  console.log(action)
  console.log(data)

    $.ajax({
        urls: action,
        method: method,
        data: data
        }).done(function(action) {

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

var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1} 
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none"; 
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block"; 
  dots[slideIndex-1].className += " active";
}

