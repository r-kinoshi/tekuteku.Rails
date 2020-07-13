class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.integer :user_id, limit: 8, null: false, default: 0
      t.string :name
      t.string :image
      t.text :comment
      t.string :url, null: true

      t.timestamps
    end
  end
end
