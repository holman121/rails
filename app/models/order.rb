class Order < ApplicationRecord
  belongs_to :customer
  validates :title, :description, presence: true
  validates :price, :quantity, numericality: {greater_than_or_equal_to: 0}
end
