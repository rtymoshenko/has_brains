# TDD - Test Driven Development
require "rspec"
require_relative '../app/16_item'
require_relative '../app/antique_item'
require_relative '../app/virtual_item'
require_relative '../app/item_container'
require_relative '../app/cart'

describe Cart do

  describe "managing items" do
    it "adds items into the cart" do
      cart = Cart.new("roman")
      item1 = Item.new("kettle", price: 200)
      item2 = Item.new("car", price: 200)
      cart.add_items(item1, item2)
  # matcher помагают сопоставить возвращаемые значения с метода с теми значениями кот ожид получить
      cart.items.should include(item1, item2) # include это matcher
    end

    it "remove items from itself"
  end


  it "counts items in itself"
  it "places order using all the items that were added into the cart"
  it "clears itself off the items after an order is placed"

end

