module ItemContainer

  module ClassMethods
    def min_price
      100 #connect the the internet and receive currency price
    end
  end

  module InstanceMethods
# this is callback- 3 arg: 1 is required, is invoked every time when we run a object has method with this name
    def method_missing(method_name)
      if method_name =~ /^all_/
        show_all_items_with_name(method_name.to_s.sub(/^all_/, '').chomp('s'))
      else
        super #вызов method_missing из родительского класса
      end
    end

    def add_item(item)
       @items.push item unless item.price < self.class.min_price
    end

    def remove_item
      @items.pop
    end

    def validate
      @items.each { |i| puts "Item has no price" if i.price.nil? }
    end

    def delete_invalid_items
      @items.delete_if { |i| i.price.nil? }
    end

    def count_valid_items
      @items.count { |i| i.price }
    end
  end

# этот метод колбек
# base будет содержать тот класс, в кот модуль вкладываем
  def self.included(base)
    base.extend ClassMethods
    base.class_eval do
      include InstanceMethods
    end
  end

  private

    def show_all_items_with_name(n)
      @items.map { |i| i if n == i.name }.delete_if { |i| i.nil? }
    end

end
