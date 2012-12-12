class CreateSubTaskCompetencies < ActiveRecord::Migration
  def self.up
    create_table :sub_task_competencies do |t|
      t.references :sub_task
      t.references :competency
      t.string :value
      t.timestamps
    end

    add_index :sub_task_competencies, :sub_task_id
    add_index :sub_task_competencies, :competency_id
  end

  def self.down
    drop_table :sub_task_competencies
  end
end