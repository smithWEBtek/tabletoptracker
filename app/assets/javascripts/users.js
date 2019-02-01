$( document ).on('turbolinks:load', function () {
  $("a.userName").on('click', function (e) {
    e.preventDefault();
   
	alert("You clicked!");
  });
});