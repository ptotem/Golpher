# Fields
# action_point: [references]
# task_master: [references]
# due_date: [date]
#
# Associations
# ActionPoint
# TaskMaster

class Task < ActiveRecord::Base

  has_paper_trail

  # associations
  belongs_to :action_point
  belongs_to :task_master
  has_many :dailies, :dependent => :destroy
  has_many :sub_tasks, :dependent => :destroy

  # attr accessible
  attr_accessible :action_point, :task_master, :due_date, :status, :sub_tasks_attributes


  accepts_nested_attributes_for :sub_tasks, :allow_destroy => true

  # validations

  validates :action_point, :task_master, :due_date, presence: true


end