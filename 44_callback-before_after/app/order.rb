#потоки помагают выполнять несколько разных частей кода одновременно
class Order

  attr_reader :items, :place_reader, :place_at, :time_spend_on_sending_email, :sent_email_at
  include ItemContainer

  def self.min_price
    100
  end

  def initialize
    @items = Array.new
  end

  def place
    @place_at = Time.now
    thr = Thread.new do
      Pony.mail(:to => StoreApplication::Admin.email,
        :from => "My Store <tymoshenkorv@gmail.com>",
        :via => :smtp, :via_options => {
          address: 'smtp.gmail.com',
          port:     '587',
          user_name: 'tymoshenkorv@gmail.com',
          password: 'romantrv_82',
          authentication: :plain,
          domain:         "mail.google.com" },
        subject: "New order has been placed", body: "Please check back you admin page to see it!")
    end
    while(thr.alive?)
      puts "."
      sleep(1)
    end
  @sent_email_at = Time.now
  @time_spend_on_sending_email = @sent_email_at - @place_at
  end
end
