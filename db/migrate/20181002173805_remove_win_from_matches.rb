class RemoveWinFromMatches < ActiveRecord::Migration[5.2]
  def change
    remove_column :matches, :win?, :boolean
  end
end
