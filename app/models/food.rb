class Food < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { in: 1..50 }
  validates :measurement_unit, presence: true, length: { in: 1..20 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 1 }
end