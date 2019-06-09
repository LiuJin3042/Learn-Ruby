# encoding:GBK
# how global var works, though not advised
x = 1
$x = 3

def change_x
  x = 3
  $x = 2
end

change_x

p "x=#{x},$x=#{$x}"

# muti-evaluation
a, b, c = 1, 2, 3
puts a, b, c

d, e, *f = 1, 2, 3, 4, 5, 6 #=>f=[4,5,6]
p d, e, f

array = [1, 2, 3]
a, b, c = array
p a, b, c
d, = array # get the first number in array
p d
