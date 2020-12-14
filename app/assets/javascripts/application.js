// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery
//= require turbolinks
//= require_self
//= require_tree.


var title = ['<p>ALL POSTERS ARE ON SALE - FORMAT A2 - DELIVERY ESTIMATED IN 3 BUSINESS DAYS. PHOTOS ARE AVAILABLE ON DEMAND - PLEASE SEND AN E-MAIL FOR PRICE AND FORMAT.  </p>'];
var index = 0;

function change_title() {
    var x = title[index];
    $('.main').html(x);
    index++;
    if (index >= title.length) { index = 0; }
};

function change_left() {
    $('.main').removeClass('slide-right').addClass('slide-left');
}

function change_right() {
    $('.main').removeClass('slide-left').addClass('slide-right');
    change_title();
}

function to_left() {
setInterval(change_left, 10000);
};

function to_right() {
    setInterval(change_right, 20000);
};

to_left();
to_right();


