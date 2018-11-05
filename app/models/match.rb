class Match < ApplicationRecord
	belongs_to :game
	belongs_to :user
	has_one :scythe, inverse_of: :match, :dependent => :destroy
	accepts_nested_attributes_for :scythe

	
end

