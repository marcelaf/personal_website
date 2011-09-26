require 'spec_helper'

describe Product do

    before (:each) do
     @attr = {
          :name => "name of the product",
          :description => "description of the product"
      }
    end

  it "can create products" do
	lambda{
		product = Product.new(@attr)
		product.save
	}.should change(Product, :count).by(1)
  end

   it "should not be valid without a name" do
      product = Product.new(@attr.merge(:name => ""))
      product.should_not be_valid
      product.errors[:name].should_not be_empty
    end

end

