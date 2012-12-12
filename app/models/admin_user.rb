class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role, :name

  ROLES = %w[Admin Projects Sales DevTeam Ex]

  has_one :employee

  after_create :create_employee
  def create_employee
    Employee.create!(name: name.titlecase, email: email, company: Company.first, onrolls: true) unless (AdminUser.all.count==1)
  end

  after_destroy :disable_employee
  def disable_employee
    self.employee.onrolls=false
    self.employee.save!
  end

end
