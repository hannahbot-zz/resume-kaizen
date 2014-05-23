// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require autonumeric
//= require_tree .

$(function(){ $(document).foundation(); });

$("#big-search-box").bind("keyup", function() {

  $("#big-search-box").addClass("loading"); // show the spinner
  var form = $("#live-search-form"); // grab the form wrapping the search bar.

  var url = "/tasks/live_search"; // live_search action.   
  var formData = form.serialize(); // grab the data in the form   
  $.get(url, formData, function(html) { // perform an AJAX get

    $("#big-search-box").removeClass("loading"); // hide the spinner

    $("#live-search-results").html(html); // replace the "results" div with the results

  });

}); 