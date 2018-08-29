class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer :game_id
      t.integer :user_id
      t.date :match_date

      t.timestamps
    end
  end
end
