class CreateActionPoints < ActiveRecord::Migration
  def self.up
    create_table :action_points do |t|
      t.references :meeting
      t.text :name
      t.date :due_date
      t.timestamps
    end

    add_index :action_points, :meeting_id
  end

  def self.down
    drop_table :action_points
  end
end