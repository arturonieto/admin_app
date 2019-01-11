class User < ApplicationRecord
  has_one :employee, dependent: :destroy
  has_one :admin, dependent: :destroy
  accepts_nested_attributes_for :employee, update_only: true
  has_secure_password
  # Role = 1 , admin
  # Role = 2 , employee
  validates :role, presence: true
  validates :role, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 2}

  def allowed_role?(role)
    self.role >= role
  end

end
