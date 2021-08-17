class Meal < ApplicationRecord
  belongs_to :user

  validates :meal_name, :category, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :quantity, presence: true, numericality: { only_integer: true }

  validates :description, presence: true, length: { maximum: 255 }
end