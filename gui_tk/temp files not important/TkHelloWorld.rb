#encoding: GBK 
#引用tk库
require 'tk'

#创建底部窗体
root = TkRoot.new do 
  title "Hello world!"   #设置窗体标题为Hello world!
  geometry "300x200"  #设置窗体大小为300x200px
end

#创建Label标签部件
TkLabel.new(root) do
  #设置标签文本为Hello world!
  text 'Hello,world'
  #设置标签文本的字体
  font "arial 20 bold"
#设置标签位置并组装部件
  pack :padx=>2, :pady=>2, :side=>'top'
end

#创建关闭按钮
TkButton.new(root) do
text "关闭"
#设置按钮动作
command { exit }
#设置按钮位置并组装部件
pack('side'=>'left', 'padx'=>10, 'pady'=>10)
end
#进入主事件循环，显示窗体
Tk.mainloop
