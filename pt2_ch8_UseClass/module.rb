# encoding:GBK
module HelloModule
  Version = 1.0

  def hello(name)
    p "hello #{name}"
  end

  module_function :hello
end

p HelloModule::Version
HelloModule.hello('yae sakura')

# mix-in
module Meth
  # shall not contain constants
  def meth
    p 'faq'
  end
end
class C
  include Meth
end

c = C.new
c.meth()