# encoding:GBK
# times, while, for, each, loop, until
#  break, next

# times method
20.times do
  puts 'i love yae_sakura forever'
end

5.times do |i|
  puts "counting #{i}"
end

# for loop
sum = 0
for i in 1..5 do # 'do' can be omitted
  sum += i
  puts sum
end

names = ['van', 'billy herrinton']
for name in names
  puts name
end

# while loop
sum = 0
i = 1
while sum  < 50
  puts sum
  sum += i
  i += 1
end

# each loop
names.each do |name|
  puts name
end

(1..5).each do |i|
  sum += i
  puts sum
end

(1..5).each do |i|
  next if i == 3
  puts i
end