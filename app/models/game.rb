class Game < ApplicationRecord
	has_many :matches
	has_many :users, through: :matches
	validates :name, uniqueness: true
	scope :favorite, -> {where(games=self.all.collect { |game|
	 		game.matches.count
	 		game.name})

	games.group_by{|x| x}.sort_by{|k, v| -v.size}.map(&:first).first
	}

# def self.favorite
# 	games = self.all.collect { |game|
# 	 	game.matches.count
# 	 	game.name
# 	 }

# 	 games.sort_

# end





end

