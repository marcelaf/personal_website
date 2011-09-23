class Order < ActiveRecord::Base
    has_many :products
    validates :customer, :length => { :maximum => 30 }
end
