class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :cats_in_household, :integer
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :active_sitter, :boolean
  end
end
