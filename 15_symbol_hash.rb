class Item
  def initialize(credential)
    @price = credential[:price]
    @weight = credential[:weight]
  end

  attr_accessor "price", :weight



end

puts :symbol
puts :symbol.object_id
puts :symbol.class

my_data = { :name => "James", :family => "Bond"}
puts my_data[:name]
puts my_data[:family_name]
item1 = Item.new({:weight => 10, :price => 30})

# item1.price = 10

puts item1.price
puts item1.weight
