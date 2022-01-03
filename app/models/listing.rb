class Listing < ActiveRecord::Base
    belongs_to :realtor
    belongs_to :user
end