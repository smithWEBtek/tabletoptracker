$(function () {
	console.log('users.js loaded ...');
	getGames()
	// decide what functions you want to call in "document ready"
	// getNewGameFormFromRails()
	// newGameFormFromGameClass()
})

// function getGames() {
const getGames = () => {
	$("a.userName").on('click', function (e) {
		e.preventDefault();

		let userId = parseInt($(".userName").attr("data-id"));
		let userURL = ("/users/" + userId + ".json")
		$.get(userURL, function (data) {

			let $ul = $("#user-games");
			let games = data.games;

			let newGame = new Game(games[0])
			let newGameHtml = newGame.gameHTML()
			$("#user-games").html(newGameHtml)

			for (var i = 0; i < games.length; i++) {
				var game = games[i];
				$ul.append('<li class="game">' + game.name + '</li>');
			};
		});
	})
}

class Game {
	constructor(obj) {
		this.id = obj.id
		this.name = obj.name
	}

	// class method, called with:  Game.newGameForm()
	static newGameForm() {
		return (`
			<form>
				<input type="text" placeholder="enter data here">
			</form>
		`)
	}
}

// .gameHTML() is an instance method, called on an instance of Game class
Game.prototype.gameHTML = function () {
	// assuming a game has_many matches, you could map over that array of matches
	// and add the resulting array of mapped items to the output below

	// let gameMatches = this.matches.map(match => {
	// 	return (`
	// 		<div>${match.won}</div>
	// 	`)
	// })

	return (`
		<div>${this.id}</div>
		<h3>${this.name}</h3>
		// <h2>${gameMatches}</h2>
	`)
}

// form:  use the static function on the Game class
function newGameFormFromGameClass() {
	$('a#get-new-game-form').on('click', function (e) {
		e.preventDefault()
		let form = Game.newGameForm()
		$('div#new-game-form').html(form)
	})
}




// form: get the Rails form, pull it over as html
// function getNewGameFormFromRails() {
// 	$('a#get-new-game-form').on('click', function (e) {
// 		e.preventDefault()

// 		$.ajax({
// 			url: 'https://localhost:3000/games/8/matches/new',
// 			method: 'get',
// 			dataType: 'html'
// 		}).done(function (response) {

// 			console.log('[getNewGameForm]response: ', response);

// 			$('div#new-game-form').html(response)
// 			// debugger;
// 		})
// 	})
// }


