class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_name, :customer_contact_info

      t.timestamps
    end
  end
end
