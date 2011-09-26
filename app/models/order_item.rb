class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  validates_presence_of :quantity, :product
  
  #def self.from_order_items(order_items)
  #  li = self.new
  #  li.product_id = order_items.product_id
  #  li.quantity = order_items.quantity
  #end
end
