# encoding:gbk
def extrat_mail(addr)
  pattern = Regexp.new('(\w+)@(.*)')
  pattern =~ addr
  return $1, $2
end

p extrat_mail('635080302@qq.com')

p '������ʽ���Ѱ�����ô��ô�Ѷ�'.gsub('��', '����')

def word_capitalize(sentence)
  sentence.gsub(/(\w+)/){|word| word.capitalize}
end

p word_capitalize('boy-next-door')

