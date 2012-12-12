# Fields
# name: [string]
#
# Associations

class TaskMaster < ActiveRecord::Base

  has_paper_trail

  # associations
  has_many :tasks, :dependent => :destroy

  # attr accessible
  attr_accessible :name

  # validations

  validates :name, presence: true

  # validates :name, length: TODO

end