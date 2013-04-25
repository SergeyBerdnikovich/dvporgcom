// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require ckeditor/init
//= require_self
//= require_tree .

jQuery(document).ready(function(){
  url = document.URL;
  var page = url.split('/')[4];
  var pages = url.split('/')[3];

   jQuery('li#current').removeClass('active');
   jQuery('li#current').removeAttr('id');
   if (pages == 'pages') {
     jQuery("li."+ page).attr('id', 'current');
     jQuery("li."+ page).addClass('active');
   } else if (pages == 'news') {

   } else {
     jQuery("li.home").attr('id', 'current');
     jQuery("li.home").addClass('active');
   }
});
