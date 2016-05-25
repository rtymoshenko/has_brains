class Cart

  attr_reader :items

  include ItemContainer
  class ItemNotSupported < StandardError; end

  UNSUPPORTED_ITEMS = [AntiqueItem, VirtualItem]

   def self.min_price
    100
  end

  def add_items(*items) # *items массив будет items[]
    @items +=items
  end

  def initialize(owner)
    @items = []
    @owner = owner
  end

  def save_to_file
    File.open("#{@owner}_cart.txt", "w") do |f|
      @items.each do |i|
        raise ItemNotSupported if UNSUPPORTED_ITEMS.include?(i.class)# car:100:50
        f.puts i
      end
    end
  end


  def read_from_file
    begin
      # 10 / 0 хотим отловить определенный тип ошибок - нет созданного файла
      # return unless File.exists?("#{@owner}_cart.txt")
      File.readlines("#{@owner}_cart.txt").each { |i| @items << i.to_real_item }
      @items.uniq!
    rescue Errno::ENOENT
      File.open("#{@owner}_cart.txt","w")
      puts "file #{@owner}_cart.txt created"
    end
  end
end
