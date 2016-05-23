class Item
  def initialize(credential)
    @price = credential[:price]
    @weight = credential[:weight]
  end

  attr_accessor :price, :weight
end

puts Item.new({}).price
puts Item.new(price: 30).price
