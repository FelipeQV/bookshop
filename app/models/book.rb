class Book < ApplicationRecord
  belongs_to :user
  # Relations

  # Validations
  validates :title, presence: true
  validates :price, presence: true
  validates :author, presence: true

end
