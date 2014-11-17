class Order < ActiveRecord::Base
  validates_presence_of :customer_name, :customer_contact_info

  has_many :item_orders
  has_many :items, through: :item_orders
end
