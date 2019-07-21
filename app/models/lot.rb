class Lot < ApplicationRecord
  
  # Associations
  # -----------------------
  
  belongs_to :organization

  # Validations
  # -----------------------
  
  validates :name, presence: true
  validates :type, presence: true, inclusion: { in: %w(students teachers), message: "is invalid" }
end
