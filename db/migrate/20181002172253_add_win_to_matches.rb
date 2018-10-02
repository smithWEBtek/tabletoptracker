class AddWinToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :win?, :boolean
  end
end
