require_relative 'store_application'
StoreApplication.config do |app|

  app.name        = "My Store"
  app.environment = :production

  app.admin do |admin|
      admin.email = 'tymoshenkorv@gmail.com'
      admin.login = 'admin'
      admin.send_info_emails_on :mondays
  end
end

p StoreApplication.environment
p StoreApplication.name
p StoreApplication::Admin.email
p StoreApplication::Admin.login

@items = []
@items << AntiqueItem.new("car", { price: 111, weight: 100 })
@items << RealItem.new({ :price => 111, :weight => 100, :name => "car" })
@items << RealItem.new({ :price => 105, :weight => 100, :name => "kettle" })
@items << RealItem.new({ :price => 99, :weight => 100, :name => "dishwasher" })
=begin
@items.each { |i| puts i.name }

cart = Cart.new("roman")
cart.add_item RealItem.new({ :price => 101, :weight => 100, :name => "car" })
cart.add_item RealItem.new({ :price => 150, :weight => 100, :name => "car" })
cart.add_item RealItem.new({ :price => 120, :weight => 100, :name => "kettle" })
=end
order = Order.new
@items.each { |i| order.add_item(i) }
order.place
