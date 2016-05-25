require "rspec"
require_relative '../app/16_item'
require_relative '../app/virtual_item'

# describe имеет отношение к классу Item,
# используется чтобы обьединить несколько метод кот имеют отношение к классу
# под it подразумевается класс Item

describe Item do
# этот метод выполняется каждый раз перед выполнением каждого теста
#  before(:each) do
#    @item = Item.new("kettle", price: 200)
#  end

  before(:all) do
    @item = Item.new("kettle", price: 200)
  end

  after(:each) {} #удалять файлы после завершения теста
  after(:all) {}

  it "calculates price according to a special formula" do
    #rspec добавляет к любому методу метод should: if true condition test passed
    @item.price.should == (232)
    @item.price = 300 #изменили цену для след теста
  end

  it "return info about an object" do
    @item.to_s.should == "kettle:232.0"
  end

end

