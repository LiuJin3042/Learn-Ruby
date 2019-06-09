# encoding:GBK

5.times do |i|
  puts i
end
# times is the method of numeric

# instance method
p '1, 2, 3, 4, 5'.split(',')
p [1, 2, 3, 4, 5].index(2)
p 1000.to_s
# method belongs to the instance

# class method
c = Array.new
Time.now

# function method
print('hello')

# creat a method
def hello(name = 'ruby')
  puts "hello #{name}"
end
hello
hello('java')



