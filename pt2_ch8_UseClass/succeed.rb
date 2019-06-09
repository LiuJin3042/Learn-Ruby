class C1
  def hello
    p 'hello'
  end
end

class C2 < C1
  def hello_again
    p 'hello_again'
  end
end

c = C2.new
c.hello
c.hello_again

class String
  def wc
    ary = self.split(/\s+/)
    return ary.size
  end
end

a = 'boy next door'
p a.wc