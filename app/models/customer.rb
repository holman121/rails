class Customer < ApplicationRecord
  has_many :order
  validates :first_name, :last_name, presence: true
  validates :city, :country, :address, :post_code, presence: true
end
