module OrdersHelper
  def add_item_link(name)
    link_to_function name do |page|
      page.insert_html :bottom, :order_items, :partial => 'items', :object => OrderItem.new
    end
  end
end
