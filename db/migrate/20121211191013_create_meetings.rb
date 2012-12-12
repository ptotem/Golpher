class CreateMeetings < ActiveRecord::Migration
  def self.up
    create_table :meetings do |t|
      t.references :employee
      t.references :company
      t.references :product
      t.text :description
      t.date :meeting_date
      t.timestamps
    end

    add_index :meetings, :employee_id
    add_index :meetings, :company_id
    add_index :meetings, :product_id
  end

  def self.down
    drop_table :meetings
  end
end