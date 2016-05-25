#спец класс у кот можно создать только один экземпляр
class StoreApplication
# все методы это методы класса!!!
  class << self
    def new
      unless @instance
        puts "loding files"
        puts self.class
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
  end
end
