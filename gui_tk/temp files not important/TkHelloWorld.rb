#encoding: GBK 
#����tk��
require 'tk'

#�����ײ�����
root = TkRoot.new do 
  title "Hello world!"   #���ô������ΪHello world!
  geometry "300x200"  #���ô����СΪ300x200px
end

#����Label��ǩ����
TkLabel.new(root) do
  #���ñ�ǩ�ı�ΪHello world!
  text 'Hello,world'
  #���ñ�ǩ�ı�������
  font "arial 20 bold"
#���ñ�ǩλ�ò���װ����
  pack :padx=>2, :pady=>2, :side=>'top'
end

#�����رհ�ť
TkButton.new(root) do
text "�ر�"
#���ð�ť����
command { exit }
#���ð�ťλ�ò���װ����
pack('side'=>'left', 'padx'=>10, 'pady'=>10)
end
#�������¼�ѭ������ʾ����
Tk.mainloop
