class ListingsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :kind
      t.integer :bedrooms
      t.integer :bathrooms
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
