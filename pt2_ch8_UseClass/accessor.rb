# encoding:GBK
class Hello
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def greet
    p "hello, i am #{self.name}"
  end
end

bob = Hello.new('Bob')
bob.greet
bob.name = 'Robert'
bob.greet
