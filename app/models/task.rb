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

  # attr accessible
  attr_accessible :action_point, :task_master, :due_date, :status

  # validations

  validates :action_point, :task_master, :due_date, presence: true


end