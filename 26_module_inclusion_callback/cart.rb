class Cart

  attr_reader :items
  include ItemContainer

   def self.min_price
    100
  end

  def initialize
    @items = []
  end
end
