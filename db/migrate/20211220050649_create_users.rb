class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.text :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
