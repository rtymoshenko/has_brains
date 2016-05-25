class Order

  attr_reader :items
  include ItemContainer

  def self.min_price
    100
  end

  def initialize
    @items = Array.new
  end
end
