class Order < ActiveRecord::Base
    has_many :order_items
    validates :customer, :length => { :maximum => 30 }
    
    def add_order_items(order_items)
      order_items.each do |item|
        li = OrderItem.from_order_items(item)
        order_items << li
      end
    end
end
