# encoding:gbk
class C1
  def hello
    'hello'
  end
end

class C2 < C1
  alias old_hello hello
  def hello
    "#{old_hello} again"
  end
end

c2 = C2.new()
p c2.hello