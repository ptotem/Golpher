class AddAdminUserIdToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :admin_user_id, :integer
  end
end
