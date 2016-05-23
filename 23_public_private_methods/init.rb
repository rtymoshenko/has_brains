require_relative 'virtual_item'
require_relative 'real_item'
require_relative '16_item'
require_relative 'cart'

item1 = VirtualItem.new({ :price => 10, :weight => 100, :name => "Car" })
item2 = RealItem.new({ :weight => 100, :name => "Car" })

cart = Cart.new
cart.add_item item1
cart.add_item item2

puts item1.price
puts item1.real_price

puts item2.info { |a,b,c| puts a }
