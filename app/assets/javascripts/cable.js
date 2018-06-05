// Action Cable provides the framework to deal with WebSockets in Rails.
// You can generate new channels where WebSocket features live using the `rails generate channel` command.
//
//= require action_cable
//= require_self
//= require_tree ./channels

(function() {
  this.App || (this.App = {});

  App.cable = ActionCable.createConsumer();

}).call(this);


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
  }(document, 'script', 'facebook-jssdk'));