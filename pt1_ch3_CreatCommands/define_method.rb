# encoding:GBK
# define a method
def state
  puts 'my name is van'
end

state

# to user a function in other ruby file
require_relative 'require_me.rb' # .rb can be omitted
hello
faq

require_relative 'grep'
grep('matz', 'test.txt')


