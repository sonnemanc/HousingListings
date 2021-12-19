class AddAddressToListing < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :street, :string
    add_column :listings, :city, :string
    add_column :listings, :state, :string
    add_column :listings, :postal, :integer
  end
end
