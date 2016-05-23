require_relative '17_array'
require_relative '16_item'

item = Item.new({:price => 10, :weight => 100, :name => "Car"})
item.info { |attr| puts attr }
