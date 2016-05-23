class Item
  def initialize(credential)
    @price = credential[:price]
    @weight = credential[:weight]
  end

  attr_accessor :price
end

puts Item.new(price: 30).price
days = ["Mon", "Tue", "Wed", "Thu", "Fri"]
