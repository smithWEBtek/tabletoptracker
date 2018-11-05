class Scythe < ApplicationRecord
	belongs_to :match, inverse_of: :scythe
	validates_presence_of :match

	scope :faction, -> { group("faction") }



	def self.count_played_faction
		count.sort_by {|k, v| v}.reverse[0][0]
	end

end