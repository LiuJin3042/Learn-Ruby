x = 1
3.times do
  y = x
  x += 1
end
p x #=> 4
# y is not defined and will cause NameError

x = y = z = 0
3.times do |x; y|
  y = x
  z = x
  x += 1
end
p [x, y, z] #=> [0, 0. 2], because x, y are local varibles in the block, and won't affect the outer x, y.

x = y = z = 0
3.times do |x, y|
  y = x
  z = x
  x += 1
end
p [x, y, z]
