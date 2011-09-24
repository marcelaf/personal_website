class RemoveTimeFromOrder < ActiveRecord::Migration
  def up
    remove_column :orders, :time
  end

  def down
    add_column :orders, :time, :time
  end
end
