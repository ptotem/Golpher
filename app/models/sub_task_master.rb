# Fields
# name: [string]
# competency: [references]
# typical: [string]
#
# Associations
# Competency

class SubTaskMaster < ActiveRecord::Base

  has_paper_trail

  # associations
  belongs_to :competency
  has_many :sub_tasks, :dependent => :destroy

  # attr accessible
  attr_accessible :name, :competency, :typical

  # validations

  validates :name, :competency, :typical, presence: true

  # validates :name, length: TODO
  # validates :typical, length: TODO

end