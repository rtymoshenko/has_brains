require_relative '17_array'
require_relative '16_item'

cart = Cart.new
cart.add_item(Item.new( price: 50, weight: 60))
cart.add_item(Item.new())

p cart.items
cart.validate
cart.remove_item
p cart.items

