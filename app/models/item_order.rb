class ItemOrder < ActiveRecord::Base
  validates_presence_of :item_quantity

  belongs_to :item
  belongs_to :order
end
