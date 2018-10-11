class Game < ApplicationRecord
	has_many :matches
	has_many :users, through: :matches
	validates :name, uniqueness: true
	scope :favorite, -> {where games = self.all.collect { |game|
	 	if
	 		game.matches.count > 1
	 		game.matches.count
	 		game.name
	 	else
	 		"going to be the one that you play the most"
	 	end
	 	
	 }

	 games.sort_by(&:to_i).last
}
	

# def self.favorite
# 	games = self.all.collect { |game|
# 	 	game.matches.count
# 	 	game.name
# 	 }

# 	 games.sort_by(&:to_i).last

# end





end

