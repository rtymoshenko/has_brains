def hello_word(first_name = '', family_name = '')
greeting = "Hello world\n"
unless first_name == '' && family_name == ''
  greeting += "My name is " + first_name + " / " + family_name
end
greeting
end

puts hello_word('Roman', 'Snitko')
puts hello_word('James')
puts hello_word
# send_via_email hello_world
# send_over_http hello_world
