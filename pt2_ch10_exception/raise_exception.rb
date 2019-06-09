MyError = Class.new(StandardError)
a = 1
if a == 1
  raise MyError, 'a error'
end
