class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :order_id, :null => false, :options => "CONSTRAINT fk_order_item_orders REFERENCES orders(id)"
      t.integer :product_id, :null => false, :options => "CONSTRAINT fk_order_item_products REFERENCES products(id)"
      t.integer :quantity, :null => false

      t.timestamps
    end
  end
end
