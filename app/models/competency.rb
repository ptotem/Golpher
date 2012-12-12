# Fields
# name: [string]
#
# Associations

class Competency < ActiveRecord::Base

  has_paper_trail

  # associations
  has_many :sub_task_masters, :dependent => :destroy
  has_many :sub_task_competencies, :dependent => :destroy
  has_many :employee_competencies, :dependent => :destroy

  # attr accessible
  attr_accessible :name

  # validations

  validates :name, presence: true

  # validates :name, length: TODO

end