require "rspec"
require_relative '../app/16_item'
require_relative '../app/virtual_item'

# describe имеет отношение к классу Item,
# используется чтобы обьединить несколько метод кот имеют отношение к классу
# под it подразумевается класс Item

describe Item do

  it "calculates price according to a special formula" do
    item = Item.new("kettle", price: 200)
    #rspec добавляет к любому методу метод should: if true condition test passed
    item.price.should == (232)
  end
end

