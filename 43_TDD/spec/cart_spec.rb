# TDD - Test Driven Development
require "rspec"
require_relative '../app/16_item'
require_relative '../app/antique_item'
require_relative '../app/virtual_item'
require_relative '../app/item_container'
require_relative '../app/cart'

describe Cart do
  it "adds items into the cart" do
    cart = Cart.new("roman")
    item1 = Item.new("kettle", price: 200)
    item2 = Item.new("car", price: 200)
    cart.add_items(item1, item2)
    cart.items.should include(item1, item2)
  end

end

