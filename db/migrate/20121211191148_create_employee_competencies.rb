class CreateEmployeeCompetencies < ActiveRecord::Migration
  def self.up
    create_table :employee_competencies do |t|
      t.references :employee
      t.references :competency
      t.integer :handicap
      t.timestamps
    end

    add_index :employee_competencies, :employee_id
    add_index :employee_competencies, :competency_id
  end

  def self.down
    drop_table :employee_competencies
  end
end