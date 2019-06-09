# encoding:GBK
def grep(pattern,filename)
  pattern = Regexp.new(pattern)
  file = File.open(filename)
  file.each_line do |line|
    if pattern =~ line
      puts 'found>>', line
    end
  end
  file.close
end