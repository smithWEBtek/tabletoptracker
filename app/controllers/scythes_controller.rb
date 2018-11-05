class ScythesController < ApplicationController
	before_action :require_login
	

	def index
		@favorite = Scythe.faction.count_played_faction
	end

end
