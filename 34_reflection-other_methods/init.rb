require_relative 'string'
require_relative 'item_container'
require_relative '16_item'
require_relative 'virtual_item'
require_relative 'real_item'
require_relative 'antique_item'
require_relative 'cart'
require_relative 'order'

@items = []
@items << AntiqueItem.new(price: 111, weight: 100, name: "car")
@items << RealItem.new({ :price => 111, :weight => 100, :name => "car" })
@items << RealItem.new({ :price => 105, :weight => 100, :name => "kettle" })
@items << RealItem.new({ :price => 99, :weight => 100, :name => "dishwasher" })

cart = Cart.new("roman")
cart.add_item RealItem.new({ :price => 101, :weight => 100, :name => "car" })
cart.add_item RealItem.new({ :price => 150, :weight => 100, :name => "car" })
cart.add_item RealItem.new({ :price => 120, :weight => 100, :name => "kettle" })

puts cart.kind_of?(Cart)
puts @items[0].kind_of?(Item)
puts @items[0].class == AntiqueItem
puts @items[0].class == Item

puts @items[0].respond_to?(:info)
puts @items[0].respond_to?(:important_info)

# метод send умеет вызывать приватные методы
puts @items[0].send(:price)
puts @items[0].price
puts @items[0].send(:tax)

method = "all_cars"
p cart.send(method)
