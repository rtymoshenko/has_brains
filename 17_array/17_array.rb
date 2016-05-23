=begin
names = ["Bob", "James", "John"]
puts names[0]
puts names[1]
puts names[2]

p names
puts names
names.push ("Roman")
names.pop
names.shift
p names
=end


class Cart

  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item)
    @items.push item
  end

  def remove_item
    @items.pop
  end

  def validate
    @items.each { |i| puts "Item has no price" if i.price.nil? }
  end
end

#$stdout = File.open('выходные данные.txt', 'a')
# $stderr = File.open('сообщения об ошибках.txt', 'w')

=begin
$stdin = File.open('сообщения об ошибках.txt')
$stdin.each { |p| puts p }

$stdin.each do |a|
  puts a
  puts a.class
end
while !$stdin.eof?
  value = gets
  puts value
end
=end
# while $stdin != 'END'
# puts $stdin

# end

# raise 'Принудительно вызываем ошибку'



