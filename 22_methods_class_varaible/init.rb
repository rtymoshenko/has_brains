require_relative 'virtual_item'
require_relative 'real_item'
require_relative '16_item'
require_relative 'cart'

item1 = VirtualItem.new({ :price => 10, :weight => 100, :name => "Car" })
item2 = RealItem.new({ :weight => 100, :name => "Car" })

puts item1.price
puts Item.discount
puts item2.price
