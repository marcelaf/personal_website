class Order < ActiveRecord::Base
    has_many :order_items
    validates :customer, :length => { :maximum => 30 }
    validates_presence_of :customer, :date

end
