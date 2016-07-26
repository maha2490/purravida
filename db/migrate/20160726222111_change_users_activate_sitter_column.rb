class ChangeUsersActivateSitterColumn < ActiveRecord::Migration[5.0]
  def change
  	rename_column :users, :active_sitter, :is_active_sitter
  end
end
