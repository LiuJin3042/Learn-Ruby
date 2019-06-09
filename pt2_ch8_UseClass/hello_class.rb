#encoding:GBK
# creat class
class HelloWorld
  def initialize(myname = 'ruby')
    @name = myname
  end

  def hello
    puts "hello world #{@name}"
  end

  def name
    @name
  end

  def name=(value)
    @name = value
  end
end

#new a instance
bob = HelloWorld.new('Bob')
bob.hello
puts bob.name
bob.name = "robert"
puts bob.name
