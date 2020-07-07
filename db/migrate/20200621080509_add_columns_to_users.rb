class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :user_name, :string
  end
  # add_index :users, [:provider, :uid], unique: true 
end