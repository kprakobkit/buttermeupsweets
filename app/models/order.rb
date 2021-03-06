class Order < ActiveRecord::Base
  validates_presence_of :customer_name, :customer_contact_info

  has_many :item_orders
  has_many :items, through: :item_orders

  def create_item_and_quantity(item_array, quantity_array)
    items_quantities = item_array.zip(quantity_array)
    items_quantities.each do |item_quantity|
      self.item_orders.new(item_id: item_quantity[0], item_quantity: item_quantity[1])
    end
  end

  def order_total
    self.item_orders.reduce(0) do |init, item_order|
      init + (Item.find(item_order.item_id).price * item_order.item_quantity)
    end
  end
end
