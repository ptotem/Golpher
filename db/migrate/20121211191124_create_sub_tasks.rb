class CreateSubTasks < ActiveRecord::Migration
  def self.up
    create_table :sub_tasks do |t|
      t.references :daily
      t.references :sub_task_master
      t.timestamps
    end

    add_index :sub_tasks, :daily_id
    add_index :sub_tasks, :sub_task_master_id
  end

  def self.down
    drop_table :sub_tasks
  end
end