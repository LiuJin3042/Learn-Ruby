def total2(from, to, &block)
  # treat block as an object
  # &block is a Proc object, pass the received block to &block
  sum = 0
  from.upto(to) do |num|
    if block
      # call the outer block
      sum += block.call(num)
    else
      sum += num
    end
  end
  return sum
end

p total2(1, 10) { |num| num ** 2 }

def call_each(ary, &block)
  # pass the block received by &block to ary.each method
  ary.each(&block)
end

call_each([1, 2, 3]) do |item|
  p item
end

def call_each2(ary, &block)
  ary.each do |item|
    block.call(item)
  end
end

call_each2([1, 2, 3]) do |item|
  p item
end
