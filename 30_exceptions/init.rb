require_relative 'string'
require_relative 'item_container'
require_relative 'virtual_item'
require_relative 'order'
require_relative 'real_item'
require_relative '16_item'
require_relative 'cart'

@items = []
# @items << VirtualItem.new({ :price => 111, :weight => 100, :name => "car" })
@items << RealItem.new({ :price => 111, :weight => 100, :name => "car" })
@items << RealItem.new({ :price => 105,:weight => 100, :name => "kettle" })
@items << RealItem.new({ :price => 99, :weight => 100, :name => "dishwasher" })

