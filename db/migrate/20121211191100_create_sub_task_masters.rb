class CreateSubTaskMasters < ActiveRecord::Migration
  def self.up
    create_table :sub_task_masters do |t|
      t.string :name
      t.references :competency
      t.string :typical
      t.timestamps
    end

    add_index :sub_task_masters, :competency_id
  end

  def self.down
    drop_table :sub_task_masters
  end
end