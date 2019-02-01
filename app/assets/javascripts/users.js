$( document ).on('turbolinks:load', function () {
  $("a.userName").on('click', function (e) {
    e.preventDefault();
    let userId = parseInt($(".userName").attr("data-id"));
   	let userURL = ("/users/" + userId + ".json")
	$.get(userURL, function(data) {
		let $ul = $("#user-games");
		let games = data.games;
      	for (var i = 0; i < games.length; i++) {
        var game = games[i];
        $ul.append('<li class="game">'+ game.name +'</li>');
    };
    });
  });
});