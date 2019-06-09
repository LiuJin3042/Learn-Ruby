a = [1, 2, 3, 4, 5]
b = [6, 7, 8]
p a + b
p a
p a.concat(b)
p a # a is changed

# del elements in array
a[20] = 1
p a
p a.compact
p a
p a.compact!
p a
a.delete(1)
p a
p (a.delete_if {|i| i>2})
p a
a.collect! {|i| i*2 }
p a
a.fill(2,1..4)
p a

a = [1, [2, [4]], 3]
a.flatten!
p a
a.reverse!
p a

a.each_with_index do |ele, i|
  print(i, ':', ele, "\n")
end

