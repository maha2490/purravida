class AddAvatarsToHomeListings < ActiveRecord::Migration[5.0]
  def self.up
    change_table :home_listings do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :home_listings, :avatar
  end
  
end
