// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/XXXXXXXXXXXXXXXXXXXXXX) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap
//= require_tree .

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
  var slides = document.querySelectorAll(".mySlides");
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

$(function() {
  $('.tab li').click(function() {

    $('.tab li').removeClass('select');

　　 $(this).addClass('select');

　　 $('.content li').addClass('hide');

    const index = $('.tab li').index($(this))
    // remove the class `hide`
    $('.content li').eq(index).removeClass('hide');
  });
});

$(function() {
  $('#accordion dd').hide();
  $('#accordion dt').click(function(e){
    $(this).next('dd').slideToggle()
  })
});

(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1";
    fjs.parentNode.insertBefore(js, fjs);
<<<<<<< HEAD
<<<<<<< HEAD
  }(document, 'script', 'facebook-jssdk'));
=======
  }(document, 'script', 'facebook-jssdk'));
  
>>>>>>> First commit
=======
  }(document, 'script', 'facebook-jssdk'));
>>>>>>> 88c55615b3830e968aa1c697c60ba212a4bc9ecb
