class AddSitterColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :tagline, :string
    add_column :users, :about_me, :string
    add_column :users, :base_rate, :string
  end
end
