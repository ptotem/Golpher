# Fields
# name: [string]
#
# Associations

class Company < ActiveRecord::Base

  has_paper_trail

  # associations
  has_many :employees, :dependent => :destroy
  has_many :meetings, :dependent => :destroy

  # attr accessible
  attr_accessible :name

  # validations

  validates :name, presence: true

  # validates :name, length: TODO

end