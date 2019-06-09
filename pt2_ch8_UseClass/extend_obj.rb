# encoding:gbk
str1 = 'boy next door'
module Edition
  Version = 10
  def edition(n)
    p "#{self}:eiditon: #{n}"
  end
end

p Edition::Version

str1.extend(Edition)
str1.edition(5)
