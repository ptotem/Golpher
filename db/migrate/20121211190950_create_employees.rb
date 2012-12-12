class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.references :company
      t.string :name
      t.string :phone
      t.string :email
      t.timestamps
    end

    add_index :employees, :company_id
  end

  def self.down
    drop_table :employees
  end
end