class Item
  def initialize
    @price = 50
  end

  #attr_reader :price, :weight
  #attr_writer :price, :weight
  attr_accessor :price, :weight



end

item1 = Item.new
item2 = Item.new

item1.price = 10
item2.price =(10)

puts item1.price
puts item2.price

sss=5
sss
