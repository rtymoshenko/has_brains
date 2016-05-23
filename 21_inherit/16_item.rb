class Item
  attr_reader :price, :name
  attr_writer :price

  def initialize(options = {})
    @price = options[:price]
    @name = options[:name]
  end

  def info
    # [price, weight, name]
    # price.to_s + ", " + weight.to_s + ", " + name
    yield(price)
    yield(name)
  end
end
