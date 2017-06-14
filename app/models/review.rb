class Review < ApplicationRecord
  belongs_to :user
  #belongs_to :reviewed, class_name: "User", foreign_key: "user_id"
  belongs_to :reviewer, class_name: "User", foreign_key: "reviewer_id"

  # Validations
  validates :content, presence: true, length: {minimum: 10}

end
