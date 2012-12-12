# Fields
# employee: [references]
# competency: [references]
# handicap: [integer]
#
# Associations
# Employee
# Competency

class EmployeeCompetency < ActiveRecord::Base

  has_paper_trail

  # associations
  belongs_to :employee
  belongs_to :competency

  # attr accessible
  attr_accessible :employee, :competency, :handicap

  # validations

  validates :employee, :competency, :handicap, presence: true

  # validates :handicap, numericality: true, length: TODO

end