class AddOnrollsToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :onrolls, :boolean
  end
end
