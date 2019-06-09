re1 = Regexp.new(Regexp.quote('/\/\/\\\'\''))
re2 = Regexp.new('/\/\/\\\'\'')
p re1 =~ 'boy /\/\/\\\'\''
p re2 =~ 'boy /\/\/\\\'\''



