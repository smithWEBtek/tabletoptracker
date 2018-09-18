class GamesController < ApplicationController
	def new
		@game = Game.new
		@games = Game.all
	end

	def create
		@game = Game.create(game_params)
		redirect_to new_match_path(@game_id)
	end

	def show
		@game = Game.find(params[:id])
	end

	private

	def game_params
		params.require(:game).permit(:name,)
	end

end
