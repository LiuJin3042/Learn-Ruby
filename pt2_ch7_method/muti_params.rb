def hi(*names)
  p names # a list
end
hi('van', 'billy')

# keywords parameters
def volume(a=0, b=1, c=2)
  puts a * b * c + b
end
volume() # default values are taken
volume
volume(b = 3, c = 0, a = 1) # same as volume(3, 0, 1)

def volume2(a: 0, b: 1, c: 2)
  puts a * b * c + c
end
volume2(b: 3, c: 3, a: 0) # order of parameters is changed
# actually passing a hash

def meth(x:0,**args)
  [x,args] # args is a hash
end

# send parameters through hash
arg1 = {b: 3, a: 2, c: 4}
volume2(arg1)

# send values separately
arg2 = [1, 2, 3]
volume(*arg2)
