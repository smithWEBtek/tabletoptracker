class GamesController < ApplicationController
	def new
		@game = Game.new
		@games = Game.all
	end

	def create
		@game = Game.find_or_initialize_by(game_params)
		if Game.where(:id => @game.id).exists?
		
			redirect_to new_game_match_path(@game)
		elsif @game.save
		redirect_to new_game_match_path(@game)
		else
			flash[:notice] = "That game could not be added. Please try again."
			redirect_to new_game_path
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
