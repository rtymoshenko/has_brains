#спец класс у кот можно создать только один экземпляр
class StoreApplication

# все методы это методы класса!!!
  class << self

    attr_accessor :name, :environment
    def config
      unless @instance
        puts "loding files"
        puts self.class
        puts self
        yield(self) # self тут StoreApplication
        require_relative 'string'
        require_relative 'item_container'
        require_relative '16_item'
        require_relative 'virtual_item'
        require_relative 'real_item'
        require_relative 'antique_item'
        require_relative 'cart'
        require_relative 'order'
      end
        @instance ||= self
    end

    # перехватываем блок и передаем в метод new класса Admin
    def admin(&block)
      @admin ||= Admin.new(&block)
    end

  end

  class Admin

    class << self
      def new
        unless @instance
          yield(self) # self тут Admin
        end
        @instance ||= self
      end

      attr_accessor :email, :login

      def send_info_emails_on(day)
        @send_info_emails_on = day
      end
    end
  end
end
