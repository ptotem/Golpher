# Fields
# meeting: [references]
# name: [text]
# due_date: [date]
#
# Associations
# Meeting

class ActionPoint < ActiveRecord::Base

  has_paper_trail

  # associations
  belongs_to :meeting
  has_many :tasks, :dependent => :destroy

  # attr accessible
  attr_accessible :meeting, :name, :due_date, :status, :tasks_attributes


  accepts_nested_attributes_for :tasks, :allow_destroy => true

  # validations

  validates :meeting, :name, :due_date, presence: true


end