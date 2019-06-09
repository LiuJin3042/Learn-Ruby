array = %w(i love yae sakura forever)
call_num = 0
# use a block to define the behaviour of sort method
sorted = array.sort do |a, b|
  call_num += 1
  a.length <=> b.length
end
p sorted, call_num

# the process is actually executed this way
def total(from, to)
  sum = 0
  from.upto(to) do |num|
    sum += if block_given?
             yield(num)
             # yield treat the block given as a function
           else
             num
           end
  end
  return sum
end

t = total(1, 100) do |num|
  num ** 2
end
p t

n = total(1, 10) do |num|
  break if num == 5
  num
end
p n #=> nil, when break, the return number will be ignored

n = total(1, 10) do |num|
  break 0 if num == 5
  num
end
p n #=>0 break 0 return 0

n = total(1, 10) do |num|
  next 0 if num == 5
  num
end
p n #=> 50, number 5 if passed
