class Item
  def initialize
    @price = 50
  end

  def price
    @price
  end

  def price=(price_value)
    @price = price_value
  end


end

item1 = Item.new
item2 = Item.new

item1.price = 10
item2.price =(10)

puts item1.price
puts item2.price
