require 'spec_helper'

describe "order_items/new.html.erb" do
  before(:each) do
    assign(:order_item, stub_model(OrderItem,
      :order_id => 1,
      :product_id => 1,
      :quantity => 1
    ).as_new_record)
  end

  it "renders new order_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => order_items_path, :method => "post" do
      assert_select "input#order_item_order_id", :name => "order_item[order_id]"
      assert_select "input#order_item_product_id", :name => "order_item[product_id]"
      assert_select "input#order_item_quantity", :name => "order_item[quantity]"
    end
  end
end
