// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require_self
//= require_tree .

// Animate the flash if any message to show
function animate_flash() {
  // Nothing to show? Get out!
  if(!$(".flash").html()) {
    return;
  }

  var flash = $(".flash");

  // Wait a bit, then fadeOut and hide
  setTimeout(function() {
    flash.fadeOut(800, function() {
      flash.hide();
    });
  }, 3000);
}

$(function() {
  // Animate flash if any message
  animate_flash();

  // Google +1 Button
  (function() {
    var po = document.createElement('script');
    po.type = 'text/javascript';
    po.async = true;
    po.src = 'https://apis.google.com/js/plusone.js';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(po, s);
  })();
});
