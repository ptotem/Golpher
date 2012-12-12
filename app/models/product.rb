# Fields
# name: [string]
#
# Associations

class Product < ActiveRecord::Base

  has_paper_trail

  # associations
  has_many :meetings

  # attr accessible
  attr_accessible :name

  # validations

  validates :name, presence: true

  # validates :name, length: TODO

end