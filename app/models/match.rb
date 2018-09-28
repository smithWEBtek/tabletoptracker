class Match < ApplicationRecord
	belongs_to :game
	belongs_to :user
	has_many :scythes
	accepts_nested_attributes_for :scythes
end

