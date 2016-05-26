class AddUserroleToUser < ActiveRecord::Migration
  def change
     add_column :users, :user_role, :integer
     add_column :users, :user_name, :string
  end
end
