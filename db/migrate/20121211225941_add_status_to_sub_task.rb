class AddStatusToSubTask < ActiveRecord::Migration
  def change
    add_column :sub_tasks, :status, :string, :default=>"Due"
  end
end
