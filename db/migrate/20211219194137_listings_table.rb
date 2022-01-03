class ListingsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :kind
      t.integer :bedrooms
      t.integer :bathrooms
      t.float :price
      t.text :description
      t.text :pic
      t.integer :user_id

      t.timestamps
    end
  end
end
