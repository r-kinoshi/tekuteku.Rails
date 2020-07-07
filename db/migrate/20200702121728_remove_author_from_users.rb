class RemoveAuthorFromUsers < ActiveRecord::Migration[6.0]
  def down
    remove_column :users, :image, :string
  end
end
