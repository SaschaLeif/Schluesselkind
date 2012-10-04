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
//= require_self
//= require_tree .
function zuklappenGirl() {
	document.getElementById('dropDownMenuGirl').style.display = 'none';
	document.getElementById('schluesselGirl').style.border = '0px solid darkred';
}
function aufklappenGirl() {
	document.getElementById('dropDownMenuGirl').style.display = 'block';
	document.getElementById('schluesselGirl').style.border = 'none';
}
function zuklappenBoy() {
	document.getElementById('dropDownMenuBoy').style.display = 'none';
	document.getElementById('schluesselBoy').style.border = '0px solid darkred';
}
function aufklappenBoy() {
	document.getElementById('dropDownMenuBoy').style.display = 'block';
	document.getElementById('schluesselBoy').style.border = 'none';
}
function zuklappenAccess() {
	document.getElementById('dropDownMenuAccess').style.display = 'none';
	document.getElementById('schluesselAccess').style.border = '0px solid darkred';
}
function aufklappenAccess() {
	document.getElementById('dropDownMenuAccess').style.display = 'block';
	document.getElementById('schluesselAccess').style.border = 'none';
}
function zuklappenBrand() {
	document.getElementById('dropDownMenuBrand').style.display = 'none';
	document.getElementById('schluesselBrand').style.border = '0px solid darkred';
}
function aufklappenBrand() {
	document.getElementById('dropDownMenuBrand').style.display = 'block';
	document.getElementById('schluesselBrand').style.border = 'none';
}
