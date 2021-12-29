class CreateRealtor < ActiveRecord::Migration[6.1]
  def change
    create_table :realtors do |t|
      t.string :name
      t.string :phone
    end
  end
end
