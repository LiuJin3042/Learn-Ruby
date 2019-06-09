# encoding:GBK
# print after read the file
filename = 'test.txt'
file = File.open(filename)
text = file.read
puts text
file.close

# read directly
file2 = File.read(filename)
puts 'file2:',file2

# read lines
file3 = File.open(filename)
file3.each_line do |line|
  print('file3>>',line)
end
file3.close

# use regex in searching contents
pattern = Regexp.new('matz')
file4 = File.open(filename)
file4.each_line do |line|
  if pattern =~ line
    print("\nfile4>>found ", line)
  end
end
