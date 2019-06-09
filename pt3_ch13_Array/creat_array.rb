p %w[do you like what you see?]
p %i[oh i am fucking coming]
table_to_list = {name:'van', work:'artist'}.to_a
p table_to_list
p 'that\'s power son that\'s power'.split(' ')
a =  'that\'s power son that\'s power'.split(' ')
p a[2]
p a[1..3] # [a[1], a[2], a[3]]
p a[3, 2] # 2 elements in total, starts from a[3]
p a[-3..-1] # a[-3], a[-2], a[-1]
a[2..4] = 1
p a
p a.values_at(0,2, 4)

set1 = %w[boy next fucking door]
set2 = %w[boy boy next door]
p(set1 & set2)
p(set1 | set2)
p(set1 - set2)
p(set1 + set2)

