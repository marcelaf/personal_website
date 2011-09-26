require 'spec_helper'

describe Order do
  before (:each) do
      @attr = {
          :customer => "customer",
          :date => "2011-09-23",
      }
    end

  it "can create orders" do
	lambda{
		order = Order.new(@attr)
		order.save
	}.should change(Order, :count).by(1)
  end

  it "should not be valid without a customer" do
    order = Order.new(@attr.merge(:customer => ""))
    order.should_not be_valid
    order.errors[:customer].should_not be_empty
  end

  it "should not be valid without a date" do
    order = Order.new(@attr.merge(:date => ""))
    order.should_not be_valid
    order.errors[:date].should_not be_empty
  end

end
