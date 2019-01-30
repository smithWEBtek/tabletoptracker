class GameSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :users
end
