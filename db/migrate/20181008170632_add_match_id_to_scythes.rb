class AddMatchIdToScythes < ActiveRecord::Migration[5.2]
  def change
    add_column :scythes, :match_id, :integer
  end
end
