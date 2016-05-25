require_relative 'store_application'
StoreApplication.config do |app|

  app.name        = "My Store"
  app.environment = :production

  app.admin do |admin|
      admin.email = 'admin@mystore.com'
      admin.login = 'admin'
      admin.send_info_emails_on :mondays
  end
end

p StoreApplication.environment
p StoreApplication.name
p StoreApplication::Admin.email
p StoreApplication::Admin.login
