# encoding:GBK
x = 3
if x < 10 && x > 1
  puts "you get #{x}"
end

if x < 10 || x > 20
  puts "now #{x}"
end

if x < 10
  puts "x < 10"
elsif x < 20
  puts "x < 20"
else
  puts "x >= 20"
end

array = ['hello', 1, nil]
array.each do |n|
  case n
  when String
    puts 'item is a string'
  when nil
    puts 'item is a nil'
  when Numeric
    puts 'item is a numeric'
  end
end

# === means both == and =~
puts /xy/ === "xyz" # not recommended 
