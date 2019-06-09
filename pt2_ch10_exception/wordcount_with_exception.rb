def wc(files)
  begin
    ltotal = 0 # total lines
    wtotal = 0 # total words
    ctotal = 0 # tatal letters
    printf("%8s %8s %8s %20s\n",'lines','words','letters','file name')
    files.each do |file|
      input = File.open(file)
      l, w, c = 0, 0, 0
      input.each_line do |line|
        l += 1
        w += line.split(/\s+/).size
        c += line.size
      end
      input.close
      printf("%8d %8d %8d %20s\n",l,w,c,file,)
      ltotal += l
      wtotal += w
      ctotal += c
    end
  rescue => ex
    p ex.message
  end
  printf("%8d %8d %8d %20s\n", ltotal, wtotal, ctotal, 'total')
end

wc(['look_around.rb','yae_sakura.rb','does not exist'])
