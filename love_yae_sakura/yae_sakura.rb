# encoding:GBK
class Lover
  attr_reader :name
  def initialize(name)
    @name = name
  end
  def love_you_forever
    3000.times do
      puts "I love #{name} 3000 times"
    end
  end
end

八重樱 = Lover.new('八重樱')
八重樱.love_you_forever