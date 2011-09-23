class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer
      t.integer :product_id
      t.integer :quantity
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
