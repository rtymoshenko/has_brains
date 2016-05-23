# class Item
class Item
  @nomethod = 4

  def price
    rand(100)
  end
end

p item1 = Item.new
p item2 = Item.new
puts item1.price
puts item2.price
