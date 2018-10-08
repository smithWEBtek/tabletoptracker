class RemoveWinFromScythes < ActiveRecord::Migration[5.2]
  def change
    remove_column :scythes, :win, :integer
  end
end
