class Match < ApplicationRecord
	belongs_to :games
	belongs_to :users
	has_many :scythes
	accepts_nested_attributes_for :scythes
end
