# encoding:gbk
str = %q(van said:"boy next 'door'")
p str
p str.split(' ')
n = 123_456 # underline to sep numbers
printf("%d in hex %x\n", n, n)
c = sprintf("%d in hex %x\n", n, n) # use format is suggested
p c
p format("hello %s", "ruby") # format() return a string object
p '%d year %d month %d day' %[2019, 6, 1]
p format('%010x', 100) # 10 digits, the extra length is filled with 0
p format('%#b', 100) # 0b110010...

a = 'boy'
b = 'door'
c = a + b
a << b
p a
p c

line = "boy next door\n"
line.chomp! # delete \n
p line
line = 'boy next door'
line.chop! # delete 'r'
p line

str = 'ABBB cc D ef'
p str.include?('B')
p str.index('B')
p str[1,4]
p str[1..4]
p str.slice(1) # method slice is same as []
str[2] = '' # delete str[2]
str.slice!(1..3) # delete str[1..3] and return it

str = '   boy   '
p str.strip
str.strip!
p str.upcase
p str.downcase
p str.capitalize
p str.tr('b', 'B') #  substitute 'b' for 'B', not support regex





