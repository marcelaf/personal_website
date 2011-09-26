class Product < ActiveRecord::Base
    has_attached_file :image
    has_many :order_items
    validates :name, :length => { :maximum => 30 }
    validates :description, :length => { :maximum => 140 }
    validates_presence_of :name
end
