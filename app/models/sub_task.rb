# Fields
# task: [references]
# sub_task_master: [references]
# employee: [references]
# due_date: [date]
# completion_date: [date]
#
# Associations
# Task
# SubTaskMaster
# Employee

class SubTask < ActiveRecord::Base

  has_paper_trail

  # associations
  belongs_to :daily
  belongs_to :sub_task_master
  has_many :sub_task_competencies, :dependent => :destroy

  # attr accessible
  attr_accessible :daily, :sub_task_master

  # validations

  validates :daily, :sub_task_master, :status, presence: true


end