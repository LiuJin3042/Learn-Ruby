# encoding:GBK
class Profile
  attr_accessor :name # define the 'name' and 'name=' method onetime
  Version = '1.0' # define a class constant
  Aco = 123 # capital first letter
  @@count = 5 # class variable
  def initialize(name)
    @name = name
  end

  def Profile.count
    @@count
  end

  def greet
    @@count += 1
    puts "hi, I am #{self.name}"
  end
end

bob = Profile.new('Bob')
puts bob.name
bob.name = 'Robert'
puts bob.name
bob.greet
p Profile::Version
p Profile::Aco
p Profile.count