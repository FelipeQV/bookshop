class Review < ApplicationRecord
  belongs_to :user

  # Validations
  validates :content, presence: true, length: {minimum: 10}

end
