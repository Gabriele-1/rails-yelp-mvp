class Restaurant < ApplicationRecord
  validates :name, presence: :true
  validates :address, presence: :true
  validates :phone_number, presence: :true
  #["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  # a restaurant has many reviews. but if a restaurant is deleted, Reviews are deleted as well.
  has_many :reviews, dependent: :destroy
end
