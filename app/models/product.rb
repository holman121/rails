class Product < ApplicationRecord
  belongs_to :company
  validates :name, presence: true
  validates :stock_quantity, :price, numericality: {greater_than_or_equal_to: 0}
end
