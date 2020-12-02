class Order < ApplicationRecord
  belongs_to :store
  has_many :order_details
  accepts_nested_attributes_for :order_details

  after_save :calculate_total

  def calculate_total
    total = 0
    products_order = OrderDetail.where(order_id: id)
    products_order.each do |product|
      product_search = Product.find(product.product_id)
      total += product_search.price
    end
    order = Order.where(id: id).update_all(total:total)
  end
end
