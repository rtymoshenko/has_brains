require_relative 'item_container'
require_relative 'virtual_item'
require_relative 'order'
require_relative 'real_item'
require_relative '16_item'
require_relative 'cart'

item1 = VirtualItem.new({ :price => 111, :weight => 100, :name => "Car" })
item2 = RealItem.new({ :price => 105,:weight => 100, :name => "Car" })
item3 = RealItem.new({  :price => 97, :weight => 100, :name => "Dishwasher" })

cart = Cart.new
cart.add_item item1
puts item1.price
cart.add_item item2
puts item2.price
cart.add_item item3
puts item3.price
puts cart.items.size

=begin
cart.remove_item
puts cart.items.size


order = Order.new
order.add_item item1
order.add_item item2
puts order.items.size

puts order.count_valid_items


class User < ActiveRecord::Base

end

 Base - это вложенный класattr_readerс в ActiveRecord
class ActiveRecord
  class Base
    ....
  end
end
=end
