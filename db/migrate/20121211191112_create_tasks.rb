class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.references :action_point
      t.references :task_master
      t.date :due_date
      t.timestamps
    end

    add_index :tasks, :action_point_id
    add_index :tasks, :task_master_id
  end

  def self.down
    drop_table :tasks
  end
end