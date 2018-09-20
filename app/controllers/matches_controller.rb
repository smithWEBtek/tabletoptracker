class MatchesController < ApplicationController
	def new
		@game = Game.find(params[:game_id])
		@games = Game.all
		@match = Match.new
	end

	def create
		@game = Game.find(params[:game_id]) # finding the parent
	    @match = @game.matches.build(match_params)
	    if @match.save
	      redirect_to game_match_path(@game, @match)
	      # games/:game_id/matches/:id
	    else
	      render "games/show"
	    end
	end

	def show
		
	end

	private

	def match_params
		params.require(:match).permit(:game_id, :match_date, scythes_attributes: [:faction, :player_mat, :score, :winning_score, :turns, :players, :airships, :win, :winner])
	end
end
