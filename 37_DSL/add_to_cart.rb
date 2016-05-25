require_relative 'init'

cart = Cart.new(ARGV.delete_at(0))
ARGV.each do |a|
  @items.each { |i| cart.add_item(i) if a == i.name }
end

p cart.items

cart.read_from_file

begin
  cart.save_to_file
rescue Cart::ItemNotSupported
  puts "One of items you're trying to save is not supported by the Cart.
  UNSUPPORTED_ITEMS classes are:#{Cart::UNSUPPORTED_ITEMS}"
end
