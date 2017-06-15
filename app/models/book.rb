class Book < ApplicationRecord
  has_attachment :photo
  belongs_to :user
  # Relations

  # Validations
  validates :title, presence: true
  validates :price, presence: true
  validates :author, presence: true

  def self.search(search)
    where("title LIKE ? OR author LIKE ?", "%#{search}%", "%#{search}%")
  end

end
