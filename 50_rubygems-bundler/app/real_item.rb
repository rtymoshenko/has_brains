require_relative '16_item'

class RealItem < Item
  attr_reader :weight
# добваляю условия для разных методов
  show_info_about :weight, lambda { |attr| attr > 5 }

  def initialize(options)
    @weight = options[:weight]
    super(options[:name], options)
  end

  def info
    if !@@show_info_about[:weight] ||
      @@show_info_about[:weight].call(weight)
      yield(weight)
    end

    super
  end

  def to_s
    super + ":#{self.weight}"
  end
end
