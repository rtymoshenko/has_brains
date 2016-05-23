def hello_word(first_name = "", family_name = "")
  unless family_name == ""|| first_name == ""
    puts "My name is " + first_name + " / " + family_name
  end
end

hello_word
hello_word("James")
hello_word("Roman", "Snitko")
