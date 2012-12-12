# Fields
# employee: [references]
# company: [references]
# product: [references]
# description: [text]
# meeting_date: [date]
#
# Associations
# Employee
# Company
# Product

class Meeting < ActiveRecord::Base

  has_paper_trail

  # associations
  belongs_to :employee
  belongs_to :company
  belongs_to :product
  has_many :action_points

  # attr accessible
  attr_accessible :employee, :company, :product, :description, :meeting_date

  # validations

  validates :employee, :company, :product, :description, :meeting_date, presence: true


end