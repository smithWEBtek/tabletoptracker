class GamesController < ApplicationController
	def new
		@game = Game.new
		@games = Game.all
	end

	def create
		@user = current_user
		@game = @user.games.build(game_params)
		raise @game.errors.inspect
		if @game.save
		redirect_to new_game_match_path(@game)
		else
			redirect_to root_path
		end

	end

	def show
		@game = Game.find(params[:id])
	end

	private

	def game_params
		params.require(:game).permit(:name)
	end

end
