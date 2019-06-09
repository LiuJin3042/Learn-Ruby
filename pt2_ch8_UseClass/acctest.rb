class Acctest
  def pub
    puts 'pub is public'
  end
  def priv
    puts 'priv is private'
  end
  private :priv
end

acc = Acctest.new
acc.pub
acc.priv #will go wrong

