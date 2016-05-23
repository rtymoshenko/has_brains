class Item

  @@discount = 0.05

  def self.discount
    if Time.now.month == 5
      return @@discount + 0.1
    else
      @@discount
    end
  end

  def initialize(options = {})
    @price = options[:price]
    @name = options[:name]
  end

  attr_reader :price, :name
  attr_writer :price

  def info
    yield(price)
    yield(name)
  end

  def price
    puts "class txt"
    puts self
    puts self.class
    @price - @price * self.class.discount
  end
end
