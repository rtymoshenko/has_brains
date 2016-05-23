class Item
  attr_reader :price, :weight
  attr_writer :price

  def initialize(options = {})
    @price = options[:price]
    @weight = options[:weight]
  end
end
# p Item.new
# puts Item.new({}).price
# puts Item.new(price: 30).price
