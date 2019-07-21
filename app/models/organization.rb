class Organization < ApplicationRecord

  # Validations
  # ------------------------
  
  validates :name, presence: true
  validates :domain, presence: true
  validates :email, presence: true
end
