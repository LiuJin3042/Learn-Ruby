# encoding:gbk
class RingArr < Array
  def [](i)
    idx = i % size
    super(idx)
  end
end
arr = RingArr['b', 'd']
p arr
p arr[100]
