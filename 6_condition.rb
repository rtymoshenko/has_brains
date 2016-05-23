name = 'John'
puts '&&' if name == 'James' && 2 > 1 &&

if name == 'James' || 2 > 1
  puts '1 - ||'
  puts '2'
end

unless name == 'James' && 2 > 1
  puts 'unless works'
end
