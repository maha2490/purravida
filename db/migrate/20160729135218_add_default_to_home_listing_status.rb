class AddDefaultToHomeListingStatus < ActiveRecord::Migration[5.0]
  def change
  	change_column :home_listings, :is_active, :boolean, default: false
  end
end
