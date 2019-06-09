# encoding:gbk
module HelloModule
  def hello
    p self
  end
  module_function :hello
end

HelloModule.hello
