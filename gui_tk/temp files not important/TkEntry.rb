#����tk��
require 'tk'
root = TkRoot.new do 
  title "Entry test"
  geometry "300x200"
end

#����TkVariable
var=TkVariable.new

#���������ı�����򣬲�����ֵ��
TkEntry.new(root){
  width 100
  text var
  pack
}  

#���������ı�����򣬲�����ֵ��
TkEntry.new(root){
  width 100
  text var
  pack
}

Tk.mainloop

