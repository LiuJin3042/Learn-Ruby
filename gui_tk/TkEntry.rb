#引用tk库
require 'tk'
root = TkRoot.new do 
  title "Entry test"
  geometry "300x200"
end

#创建TkVariable
var=TkVariable.new

#创建单行文本输入框，并设置值绑定
TkEntry.new(root){
  width 100
  text var
  pack
}  

#创建单行文本输入框，并设置值绑定
TkEntry.new(root){
  width 100
  text var
  pack
}

Tk.mainloop

