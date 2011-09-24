class RemoveQuantityFromOrder < ActiveRecord::Migration
  def up
    remove_column :orders, :quantity
  end

  def down
    add_column :orders, :quantity, :integer
  end
end
