$( document ).on('turbolinks:load', function () {
  $("a.userName").on('click', function (e) {
    e.preventDefault();
    var userId = parseInt($(".userName").attr("data-id"));
   	var userURL = ("/users/" + userId + ".json")
	$.get(userURL, function(data) {
      console.log(data);
    });
  });
});