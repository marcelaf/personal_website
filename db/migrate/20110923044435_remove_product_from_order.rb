class RemoveProductFromOrder < ActiveRecord::Migration
  def up
    remove_column :orders, :product_id
  end

  def down
    add_column :orders, :product_id, :integer
  end
end
