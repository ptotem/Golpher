# Fields
# task_id: [integer]
# employee_id: [integer]
# due_date: [date]
# completion_date: [date]
# status: [string]
#
# Associations

class Daily < ActiveRecord::Base

  has_paper_trail

  # associations
  belongs_to :employee
  belongs_to :task

  # attr accessible
  attr_accessible :task_id, :employee_id, :due_date, :completion_date, :status

  # validations

  validates :task_id, :employee_id, :due_date, :completion_date, :status, presence: true

  # validates :task_id, numericality: true, length: TODO
  # validates :employee_id, numericality: true, length: TODO
  # validates :status, length: TODO

end