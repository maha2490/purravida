class AddDefaultToSitterStatus < ActiveRecord::Migration[5.0]
  def change
  	change_column :users, :is_active_sitter, :boolean, default: false
  end
end
