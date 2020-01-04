class Product < ApplicationRecord
  validates :name, :description, :amount, :price, presence: true
end
