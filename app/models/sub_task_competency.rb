# Fields
# sub_task: [references]
# competency: [references]
# value: [string]
#
# Associations
# SubTask
# Competency

class SubTaskCompetency < ActiveRecord::Base

  has_paper_trail

  # associations
  belongs_to :sub_task
  belongs_to :competency

  # attr accessible
  attr_accessible :sub_task, :competency, :value

  # validations

  validates :sub_task, :competency, :value, presence: true

  # validates :value, length: TODO

end