class Product < ActiveRecord::Base
    has_attached_file :image
    validates :name, :length => { :maximum => 30 }
    validates :description, :length => { :maximum => 140 }
end
