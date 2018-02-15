class Company < ApplicationRecord
  has_many :products
  validates :name, :address, :email, :phone, presence: true
end
