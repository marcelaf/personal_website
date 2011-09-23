require 'spec_helper'

describe "LayoutLinks" do
    it "should have a Add Order page at '/addorder'" do
    get '/'
    response.should have_selector('title', :content => "Add Order")
  end

  it "should have a Add Product page at '/addproduct'" do
    get '/contact'
    response.should have_selector('title', :content => "Add Product")
  end

  it "should have an View Orders page at '/vieworders'" do
    get '/about'
    response.should have_selector('title', :content => "View Orders")
  end
  
  it "should have an View Products page at '/viewproducts'" do
    get '/about'
    response.should have_selector('title', :content => "View Products")
  end
end
