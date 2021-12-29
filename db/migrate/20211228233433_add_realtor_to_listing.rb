class AddRealtorToListing < ActiveRecord::Migration[6.1]
  def change
    add_column  :listings, :realtor_id, :integer
  end
end
