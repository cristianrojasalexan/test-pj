class Product < ApplicationRecord
  has_many :stores
  has_many :order_details
end
