require "rspec"
require 'rspec/collection_matchers'
require_relative '../app/16_item'
require_relative '../app/virtual_item'
require_relative '../app/item_container'

class ItemBox
  def initialize
    @items = []
  end

  include ItemContainer
end

describe ItemContainer do

  before(:each) do
    @box = ItemBox.new
    @item1 = Item.new("kettle", price: 200)
    @item2 = Item.new("kettle", price: 300)
  end

  it "shows minimum price for the item" do
    ItemBox.min_price.should be(100)
  end

  it "add items into the container" do
    @box.add_item(@item1)
    @box.add_item(@item2)
# матчер это оргументы кот передаются шуд, кот позволяют сопоставить возвр. из метода значение с кот мы ожидаем получить
# have проверяет сколько обьектов возвращается
    @box.items.should have(2).items
  end

  it "removes items from the box" do
    @box.add_item(@item1)
    @box.add_item(@item2)

    @box.remove_item.should be(@item2)
    @box.remove_item
    @box.items.should be_empty
  end

  it "raise error if user is trying to add anything else but not an item" do
    lambda { @box.add_item("something else") }.should raise_error # lamda позволяет вызывать блоки на лету
  end

end
