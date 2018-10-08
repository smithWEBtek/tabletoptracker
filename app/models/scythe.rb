class Scythe < ApplicationRecord
	belongs_to :match, inverse_of: :scythe
	validates_presence_of :match
end
