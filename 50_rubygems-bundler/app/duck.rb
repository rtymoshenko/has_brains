class Duck

  @@greeting = "Hello @@greeting"
  def initialize(greeting)
    @greeting = greeting # это инстансная переменная
  end

#это метод обьекта или инстансный метод, он доступен всем обьектам класса Duck
  def quack
    puts "#{@@greeting} #{@greeting}"
  end

  class << self

    attr_accessor :greeting

    def quack
  # у этого метода нет доступа к инстансной переменной @greeting
      puts @greeting # это инстансная переменная класса
      puts "#{@@greeting} #{@greeting}"
    end
  end

end

duck1 = Duck.new("quack quack")
duck1.quack

Duck.greeting = "class quack"
Duck.quack
