class AddIndexToUsers < ActiveRecord::Migration[6.0]
  def change
    add_index :users, [:provider, :uid], unique: true 
  end
end
