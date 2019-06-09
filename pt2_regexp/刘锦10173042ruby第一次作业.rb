# encoding:gbk
def extrat_mail(addr)
  pattern = Regexp.new('(\w+)@(.*)')
  pattern =~ addr
  return $1, $2
end

p extrat_mail('635080302@qq.com')

p '正则表达式真难啊，怎么这么难懂'.gsub('难', '容易')

def word_capitalize(sentence)
  sentence.gsub(/(\w+)/){|word| word.capitalize}
end

p word_capitalize('boy-next-door')

