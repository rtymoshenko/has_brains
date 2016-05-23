require_relative 'item_container'
require_relative 'virtual_item'
require_relative 'order'
require_relative 'real_item'
require_relative '16_item'
require_relative 'cart'

item1 = VirtualItem.new({ :price => 10, :weight => 100, :name => "Car" })
item2 = RealItem.new({ :weight => 100, :name => "Car" })
item3 = RealItem.new({ :weight => 100, :name => "Dishwasher" })

cart = Cart.new
cart.add_item item1
cart.add_item item2
cart.add_item item3
puts cart.items.size
cart.remove_item
puts cart.items.size


order = Order.new
order.add_item item1
order.add_item item2
puts order.items.size
