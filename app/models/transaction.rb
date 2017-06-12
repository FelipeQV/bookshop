class Transaction < ApplicationRecord
  belongs_to :book
  belongs_to :user
  belongs_to :buyer, class: User, foreign_key: "buyer_user_id"
end


