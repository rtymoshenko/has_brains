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

unless StoreApplication.frozen?
  StoreApplication.name = "My name"
end
p StoreApplication.name

StoreApplication::Admin.email = "new@email.com"
p StoreApplication::Admin.email
