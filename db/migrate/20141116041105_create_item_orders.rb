class CreateItemOrders < ActiveRecord::Migration
  def change
    create_table :item_orders do |t|
      t.references :item, :order
      t.integer :item_quantity

      t.timestamps
    end
  end
end
