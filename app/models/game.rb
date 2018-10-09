class Game < ApplicationRecord
	has_many :matches
	has_many :users, through: :matches
	validates :name, uniqueness: true
	scope :favorite, -> {where games = self.all.collect { |game|
	 	game.matches.count
	 	game.name
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



# game.matches.count >= 3
# .sort_by(&:to_i)

end

# sort games by game.matches.count
# detect the first game