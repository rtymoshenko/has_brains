a = if ARGV[0]
  ARGV[0].to_i
else
  1
end

puts ARGV[0].to_i

while a < 10
  a += 1
  puts a
end
