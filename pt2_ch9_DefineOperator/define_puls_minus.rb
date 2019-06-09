# encoding:GBK
# define the +,-,*,/ operator between vinary vectors
# provide a way to for class instances interactions
class BV
  include Comparable # compare 2 vector objects
  attr_accessor :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end

  def inspect
    p "(#{x}, #{y})"
  end

  def scaler
    Math.sqrt(x ** 2 + y ** 2)
  end

  def +(other)
    self.class.new(x + other.x, y + other.y)
  end

  def -(other)
    self.class.new(x - other.x, y - other.y)
  end

  def *(other)
    self.class.new(x * other.x, y * other.y)
  end

  def /(other)
    self.class.new(x / other.x, y / other.y)
  end

  def <=>(other)
    scaler <=> other.scaler
  end

  def -@
    self.class.new(-x, -y)
  end

  def ~@
    self.class.new(-y, x)
  end

  def [](i)
    # get the value through index
    # for example: x1=(1,2), x1[0]=1
    case i
    when 0
      x
    when 1
      y
    else
      raise ArgumentError, "out of range '#{i}'"
    end
  end
end

x1 = BV.new(1, 2)
x2 = BV.new(3, 4)
(x1 + x2).inspect
(x1 / x2).inspect
(-x1).inspect
(~x1).inspect
p x1[1]
p x1 <=> x2
p x1 > x2
p x1 < x2