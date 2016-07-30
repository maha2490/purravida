class CreateHomeListings < ActiveRecord::Migration[5.0]
  def change
    create_table :home_listings do |t|
      t.text :description
      t.string :location
      t.integer :beds
      t.integer :baths
      t.string :sqft
      t.string :integer
      t.string :pets
      t.string :capacity
      t.boolean :is_active
      t.integer :user_id

      t.timestamps
    end
  end
end
