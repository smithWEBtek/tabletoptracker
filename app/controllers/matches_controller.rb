
class MatchesController < ApplicationController

	def index
		@matches = Match.all
	end

	def new
		@game = Game.find(params[:game_id])
		@games = Game.all
		@match = Match.new
	end

	def create
		@game = Game.find(params[:game_id]) # finding the parent
	    @match = @game.matches.build(match_params)
	    @match.user = current_user

	    if @match.save

	      redirect_to game_match_path(@game, @match)
	     # "games/#{@game.id}/matches/#{@match.id}"
	      # games/:game_id/matches/:id

	    else
	      redirect_to root_path
	    end
	end

	def show
		@game = Game.find(params[:game_id]) # finding the parent
		@match = Match.find(params[:id])
		@user = current_user
	end

	private

	def match_params
		params.require(:match).permit(:user_id, :game_id, :match_date, scythes_attributes: [:faction, :player_mat, :score, :winning_score, :turns, :players, :airships, :win, :winner])
	end
end
