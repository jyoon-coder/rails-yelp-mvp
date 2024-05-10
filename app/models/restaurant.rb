class Restaurant < ApplicationRecord
  # associations
  has_many :reviews, dependent: :destroy
  # validations
  validates :name, :address, :phone_number, :category, presence: true, uniqueness: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"]}
end
