class CreateDailies < ActiveRecord::Migration
  def self.up
    create_table :dailies do |t|
      t.integer :task_id
      t.integer :employee_id
      t.date :due_date
      t.date :completion_date
      t.string :status
      t.timestamps
    end

  end

  def self.down
    drop_table :dailies
  end
end