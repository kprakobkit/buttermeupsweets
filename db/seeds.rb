# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

# menu = [ { name: "Pumpkin Pie", price: 20.00 }, { name: "Pumpkin Cheese Cake Tart", price: 25.00 }, { name: "Apple Pie", price: 20.00 }, { name: "Pumpkin Bread", price: 18.00 } ]

# christmast_menu.each do |item|
#   Item.create(name: item[:name], price: item[:price])
# end
file_path = './db/menu.csv'

CSV.foreach(file_path, :headers => true) do |row|
  item = row.to_hash
  Item.create(name: item["name"], price: item["price"])
end
