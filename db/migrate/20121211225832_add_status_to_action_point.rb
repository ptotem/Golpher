class AddStatusToActionPoint < ActiveRecord::Migration
  def change
    add_column :action_points, :status, :string, :default=>"Due"
  end
end
