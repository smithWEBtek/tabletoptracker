class Game < ApplicationRecord
	has_many :matches
	has_many :users, through: :matches
	validates :name, uniqueness: true
	# scope :favorite, -> {where(
	# }

def self.favorite
	games = self.all.collect do |game|
	 		game.matches.count
	 		game.name
	 	end

	games.group_by{|x| x}.sort_by{|k, v| -v.size}.map{|game| game.first}.first
end




end

