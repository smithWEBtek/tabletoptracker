class CreateScythes < ActiveRecord::Migration[5.2]
  def change
    create_table :scythes do |t|
      t.integer :game_id
      t.string :faction
      t.string :player_mat
      t.integer :score
      t.integer :winning_score
      t.integer :turns
      t.integer :players
      t.boolean :airships
      t.boolean :win
      t.string :winner

      t.timestamps
    end
  end
end
