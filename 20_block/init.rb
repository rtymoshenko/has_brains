require_relative '17_array'
require_relative '16_item'

item1 = Item.new({ :price => 10, :weight => 100, :name => "Car" })
item2 = Item.new({ :weight => 100, :name => "Car" })

cart = Cart.new
cart.add_item item1
cart.add_item item2

#my block
item1.info { |attr| puts attr }

p cart.items
cart.delete_invalid_items
p cart.items


james_bond = { :first_name => "James", :middle_name => "Robert", :last_name => "Bond" }
james_bond.each_key { |key| puts james_bond[key] }
File.open("/tmp/block.txt", "w") { |f| f.puts "hello_word" }
