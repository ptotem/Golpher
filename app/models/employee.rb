# Fields
# company: [references]
# name: [string]
# phone: [string]
# email: [string]
#
# Associations
# Company
# AdminUser

class Employee < ActiveRecord::Base

  has_paper_trail

  # associations
  belongs_to :company
  belongs_to :admin_user
  has_many :meetings, :dependent => :destroy
  has_many :dailies, :dependent => :destroy
  has_many :employee_competencies, :dependent => :destroy

  # attr accessible
  attr_accessible :company, :name, :phone, :email, :onrolls, :admin_user_id

  # validations
  validates :name, presence: true

  # scopes
  scope :current, -> { where(onrolls: true) }

end