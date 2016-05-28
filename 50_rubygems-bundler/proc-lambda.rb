2.2.3 :001 > x = Proc.new {}
 => #<Proc:0x00000001a96928@(irb):1>
2.2.3 :002 > x = proc {}
 => #<Proc:0x00000001a92350@(irb):2>
2.2.3 :003 > x = proc { puts "hello word" }
 => #<Proc:0x00000001a8b398@(irb):3>
2.2.3 :004 > x.call
hello word
 => nil
2.2.3 :005 > x = proc { |greating| puts greating }
 => #<Proc:0x00000001a711a0@(irb):5>
2.2.3 :006 > x.call

 => nil
2.2.3 :007 > x.call("hello word")
hello word
 => nil
 -----------------
proc VS lambda:
------------------
1 lambda return error when no argument
2.2.3 :008 > y = lambda { |greating| puts greating }
 => #<Proc:0x00000001a5a8b0@(irb):8 (lambda)>
2.2.3 :009 > y.call
ArgumentError: wrong number of arguments (0 for 1)
  from (irb):8:in `block in irb_binding'
  from (irb):9:in `call'
  from (irb):9
  from /home/roman/.rvm/rubies/ruby-2.2.3/bin/irb:11:in `<main>

2 lambda return value
2.2.3 :011 > y lambda { return "hello word" }
NoMethodError: undefined method `y' for main:Object
  from (irb):11
  from /home/roman/.rvm/rubies/ruby-2.2.3/bin/irb:11:in `<main>'
2.2.3 :012 > y =  lambda { return "hello word" }
 => #<Proc:0x00000001e4c310@(irb):12 (lambda)>
2.2.3 :013 > y.call
 => "hello word"
2.2.3 :014 > x = proc { return "hello word" }
 => #<Proc:0x00000001e31b28@(irb):14>
2.2.3 :015 > x.call
LocalJumpError: unexpected return
  from (irb):14:in `block in irb_binding'
  from (irb):15:in `call'
  from (irb):15
  from /home/roman/.rvm/rubies/ruby-2.2.3/bin/irb:11:in `<main>'
2.2.3 :016 >
