require_relative 'app/store_application'

StoreApplication.config do |app|

  app.name        = "My Store"
  app.environment = :production

  app.admin do |admin|
      admin.email = 'tymoshenkorv@gmail.com'
      admin.login = 'admin'
      admin.send_info_emails_on :mondays
  end
end

@items = []
@items << AntiqueItem.new("car", { price: 111, weight: 100 })
@items << RealItem.new({ :price => 111, :weight => 100, :name => "car" })
@items << RealItem.new({ :price => 105, :weight => 100, :name => "kettle" })
@items << RealItem.new({ :price => 99, :weight => 100, :name => "dishwasher" })

=begin
puts order.place_at.to_i
puts order.place_at.utc
=end

order = Order.new
puts order.place
puts order.place_at.utc
puts order.place_at
puts order.sent_email_at
puts order.time_spend_on_sending_email

puts order.place_at.strftime("%b %-d, %Y %H:%M:%S") # Jan 1, 1970 15:00:00
