class CreateTaskMasters < ActiveRecord::Migration
  def self.up
    create_table :task_masters do |t|
      t.string :name
      t.timestamps
    end

  end

  def self.down
    drop_table :task_masters
  end
end